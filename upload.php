<?php

include "./Inc/init_inc.php";
include "./Inc/usr_func.php";

// checks login
if(!check_login()){
    header("Location: ./login.php");
    die();
}

$currency_rates = json_decode(file_get_contents('https://api.exchangerate-api.com/v4/latest/EUR'), true);

// check if currency rates are loaded
if($currency_rates == false){
    die("Currency rates didn't load!");
}

if(!isset($currency_rates['rates'])){
    die("Something is wrong with the currency rates!");
}
$currency_rates = $currency_rates['rates'];

$target_dir = "uploads/";
$fileType = strtolower(pathinfo($_FILES['fileToUpload']['name'] ,PATHINFO_EXTENSION));
$file_name = $_FILES["fileToUpload"]["name"]; // save the real name of the file

// uploaded file has to have randomized name
$target_file = return_random_name();

// api key for mapon
$api_key = 'f94e281f9eff169647620454a2f62839524452a8';


// CHECK IF FILE TYPE IS ALLOWED
if(isset($_POST["submit"])) {
    if($fileType == "csv"){
        
        if (file_exists($target_file)) {
            die("File already exists!");
        }

        // write file to the remote directory
        if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file)) {
            // file has been successfully uploaded
            // uploaded file insert into database
            $data = array(
                'doc_name' => $file_name, 
                'doc_path' => $target_file,
                'user_id' => get_user_id()
            );
            $inserted_doc_id = $GLOBALS['sql']->insert("documents", $data);
            

            $row = 1;
            if (($handle = fopen($target_file, "r")) !== FALSE) {
                while (($data = fgetcsv($handle, 1000, ",")) !== FALSE) {
                    // check correct column count
                    if(count($data) == 11){
                        $row++;
                        $arr = create_data_arr($data, $inserted_doc_id);
                        if($arr){ // if returned result isn't false, insert it into database
                            // insert
                            $db =  $GLOBALS['sql']->insert("transactions", $arr);
                            
                        }
                        

                    }
                }
                fclose($handle);
            }

            // after everything is put into database, we need to add information through api
            // unit_ids is the unit ids for the available cars
            $unit_ids = get_all_unit_ids($inserted_doc_id);

            foreach ($unit_ids as $number => $unit_id){
                // WHERE car_nr = $number AND doc_id = $inserted_doc_id
                $GLOBALS['sql']->where('car_nr', $number);
                $GLOBALS['sql']->where('doc_id', $inserted_doc_id);
                
                // get every time in a temp array, and convert time to request the api
                $arr = $GLOBALS['sql']->get('transactions', null, ['datetime_ts', 'country_iso', 'car_nr']);
                $api_arr = []; // array, that has data from api, and its unix timestamp

                for($i = 0; $i < count($arr); $i++){
                    @date_default_timezone_set(get_time_zone($ccode));

                    $datetime = date("Y-m-d\TH:i:s\Z", $arr[$i]['datetime_ts']);
                    $req = json_decode(file_get_contents('https://mapon.com/api/v1/unit_data/history_point.json?key='. $api_key .'&unit_id='. $unit_id .'&datetime='. $datetime .'&include[]=mileage&include[]=can_total_distance&include[]=position'), true);
                    
                    if(isset($req['data']['units'][0])){ 
                        $tmp = $req['data']['units'][0];
                        $api_arr = array_merge($api_arr, array(array(
                            'car_nr'        => $arr[$i]['car_nr'],
                            'datetime_ts'   => $arr[$i]['datetime_ts'],
                            'gps_km'        => $tmp['mileage']['value'],
                            'can_km'        => $tmp['can_total_distance']['value'],
                            'lat'           => $tmp['position']['value']['lat'],
                            'lng'           => $tmp['position']['value']['lng']
                        )));
                    }

                    
                }

                // when api array has finished gathering information, we need to update the database
                // by looping through newly created array, and updating each of the value in database
                for($i = 0; $i < count($api_arr); $i++){
                    echo "<pre>". print_r($api_arr[$i], 1) ."</pre>";    
                    // prepeare where statement and update its values
                    $GLOBALS['sql']->where('car_nr', $api_arr[$i]['car_nr']);
                    $GLOBALS['sql']->where('datetime_ts', $api_arr[$i]['datetime_ts']);
                    $GLOBALS['sql']->where('doc_id', $inserted_doc_id);

                    $GLOBALS['sql']->update('transactions', $api_arr[$i]);
                }


                
            }

            
            header("Location: ./");

        } else {
            die("Sorry, there was an error uploading your file.");
        }
    }else{
        die("File type is not allowed!");
    }
}

// from row data given, sort it and return as array
// function returns false if product didn't meet the requirments
function create_data_arr($row_data, $doc_id){
    $allowed_prod = ['Diesel', 'E95', 'E98', 'Electricity', 'CNG']; // allowed products
    if(in_array($row_data[4], $allowed_prod)){
        
        

        // check if currency needs to be converted
        if($row_data[7] != "EUR"){
            
            // translate currency
            $row_data[6] = round($row_data[6] / $GLOBALS['currency_rates'][$row_data[7]], 2);
            $row_data[7] = "EUR";
        }

        $return_data = array(
            'doc_id' =>         $doc_id,
            'datetime_ts' =>    convert_string_unix($row_data[1], $row_data[0], $row_data[9]),
            'card_nr' =>        $row_data[2],
            'car_nr' =>         $row_data[3],
            'product' =>        $row_data[4],
            'amount' =>         $row_data[5],
            'sum' =>            $row_data[6],
            'currency' =>       $row_data[7],
            'country' =>        $row_data[8],
            'country_iso' =>    $row_data[9],
            'fuel_station' =>   $row_data[10]
        );

        return $return_data;
    }

    return false;
    
}

// this function return unix date, from string time, and date + timezone, function returns false, on non correct data
function convert_string_unix($time, $date, $ccode){
    @date_default_timezone_set(get_time_zone($ccode));

    $unix_ts = strtotime($date. ' ' .$time);
    if(!$unix_ts){ // timestamp was unsuccessfull
        return false;
    }

    return $unix_ts;
}

// this function returns an object that shows all available car unit_ids
function get_all_unit_ids($doc_id){
    $unit_id_link = "https://mapon.com/api/v1/unit/list.json?key=" . $GLOBALS['api_key'];

    $GLOBALS['sql']->where('doc_id', $doc_id);
    $trans = $GLOBALS['sql']->get('transactions');

    for($i = 0; $i < count($trans); $i++){
        $unit_id_link = $unit_id_link . "&car_number[]=" . $trans[$i]['car_nr'];
    }

    $unit_id_res_arr = json_decode(file_get_contents($unit_id_link), true);


    // loop through unit_id_res_arr array and save car unit ids in a new array
    $unit_ids = [];
    if(isset($unit_id_res_arr['data']['units'])){
        $unit_id_res_arr = $unit_id_res_arr['data']['units'];

        for($i = 0; $i < count($unit_id_res_arr); $i++){
            $unit_ids = array_merge($unit_ids, array($unit_id_res_arr[$i]['number'] => $unit_id_res_arr[$i]['unit_id']));
        }
    }
    
    // unit_ids 
    // Array
    // (
    //     [KA-6963] => 117266
    // )
    return $unit_ids;
}

// function that returns timezone from mysql database by giving country iso
function get_time_zone($country_code){
    $GLOBALS['sql']->where("country_code", $country_code);
    return $GLOBALS['sql']->getValue("timezonecity", "time_zone");
}

// this function returns randomized name that doesn't exist yet
function return_random_name(){
    $target_file = $GLOBALS['target_dir'] . generateRandomString(64) . "." . $GLOBALS['fileType'];
    while(file_exists($target_file)){
        $target_file = $GLOBALS['target_dir'] . generateRandomString(64) . "." . $GLOBALS['fileType'];
    }

    return $target_file;
}


// well this is obvious
function generateRandomString($length = 10) {
    $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
    $charactersLength = strlen($characters);
    $randomString = '';
    for ($i = 0; $i < $length; $i++) {
        $randomString .= $characters[random_int(0, $charactersLength - 1)];
    }
    return $randomString;
}

?>
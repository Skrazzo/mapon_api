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
    //echo "<pre>". print_r($row_data, 1) ."</pre>";

    //echo "<p>". convert_string_unix($row_data[1], $row_data[0], $row_data[9]) ."</p>";

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
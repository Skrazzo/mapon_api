<?php

include "./Inc/init_inc.php";
include "./Inc/usr_func.php";

// checks login
if(!check_login()){
    header("Location: ./login.php");
    die();
}


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
            //header("Location: ./");

            // uploaded file insert into database
            $data = array(
                'doc_name' => $file_name, 
                'doc_path' => $target_file,
                'user_id' => get_user_id()
            );
            $GLOBALS['sql']->insert("documents", $data);
            

            $row = 1;
            if (($handle = fopen($target_file, "r")) !== FALSE) {
                while (($data = fgetcsv($handle, 1000, ",")) !== FALSE) {
                    // check correct column count
                    if(count($data) == 11){
                        $row++;
                        

                    }
                }
                fclose($handle);
            }

        } else {
            die("Sorry, there was an error uploading your file.");
        }
    }else{
        die("File type is not allowed!");
    }
}

// from row data given, sort it and return as array
function create_data_arr($row_data){

}

// this function returns randomized name that doesn't exist yet
function return_random_name(){
    $target_file = $GLOBALS['target_dir'] . generateRandomString(64) . "." . $GLOBALS['fileType'];
    while(file_exists($target_file)){
        $target_file = $GLOBALS['target_dir'] . generateRandomString(64) . "." . $GLOBALS['fileType'];
    }

    return $target_file;
}

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
<?php


// checks if user is logged in, returns true if user is logged in
function check_login(){
    if(!isset($_SESSION['token'])) return false;

    $GLOBALS['sql']->where("token", $_SESSION["token"]);
    $result = $GLOBALS['sql']->get("users");
    if(count($result) == 1){ // token has been verified
        return true;
    }

    return false;
}




function return_token(){
    return bin2hex(random_bytes(32));
}

// function checks if all required fields in $_POST exist and are not empty
function check_fields($required){
    // Loop over field names, make sure each one exists and is not empty
    $error = false;
    foreach($required as $field) {
        if (empty($_POST[$field])) {
            $error = true;
        }
    }

    if ($error) {
        return false;
    } else {
        return true;
    }
}



function message($message, $error = false){
    echo "<div class='". (($error) ? "message_error" : "message_success") ."'>". $message ."</div>";
}


?>
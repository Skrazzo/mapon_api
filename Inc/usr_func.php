<?php
//------------------- user managment ------------------
function register($user, $pass){
    $hash = password_hash($pass, PASSWORD_BCRYPT);
    $token = return_token();
    
    $data = array(
        "pass" => $hash,
        "user" => $user,
        "token" => $token
    );
    $GLOBALS['sql']->insert("users", $data);

    // log in user
    $_SESSION['token'] = $token;
}

// function logs in user, if password is correct
function login($user, $pass){

    // creating where statement and getting hashed password
    $GLOBALS['sql']->where('user', $user); 
    $hash = $GLOBALS['sql']->getValue("users", "pass");

    if(password_verify($pass, $hash)){
        // generate new token, update the database, and log in user with new token
        $token = return_token();

        $GLOBALS['sql']->where('user', $user); 
        $update_data = array(
            'token' => $token
        );
        $GLOBALS['sql']->update('users', $update_data);

        $_SESSION['token'] = $token;
        
        // return message
        return true;
    }
    return false;
}

function check_password(){

}

// function returns true, if username already exists
function username_exists($user){
    $GLOBALS['sql']->where("user", $user);
    if($GLOBALS['sql']->getValue("users", "COUNT(*)") > 0) return true;
    return false;
}
?>
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

function login(){

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
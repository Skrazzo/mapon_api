<?php

include "./Inc/init_inc.php";
include "./Inc/usr_func.php";



if(check_fields(['username', 'pass', 're-pass'])){
    if(!username_exists($_POST['username'])){
        if($_POST['pass'] == $_POST['re-pass']){
            register($_POST['username'], $_POST['pass']);
            header("Location: ./");
        }else{
            message("Passwords didn't match!", true);    
        }
    }else{
        message("Username already exists!", true);
    }
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>

    <link rel="stylesheet" href="./CSS/message.css">
</head>
<body>
    <form action="./register.php" method="post">
        <input placeholder="Username" type="text" name="username">
        <input placeholder="Password" type="password" name="pass">
        <input placeholder="Re-enter password" type="password" name="re-pass">
        <button>Register</button>
    </form>
    <a href="./login.php">Login here</a>
</body>
</html>
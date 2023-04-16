<?php

include "./Inc/init_inc.php";
include "./Inc/usr_func.php";

if(check_fields(['user', 'pass'])){
    if(login($_POST['user'], $_POST['pass'])){ // login successfull
        // redirect
    }else{ 
        message("Username or password wasn't correct", true);
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
    <form action="./login.php" method="post">
        <input placeholder="Username" type="text" name="user">
        <input placeholder="Password" type="password" name="pass">
        <button>Login</button>
    </form>
</body>
</html>
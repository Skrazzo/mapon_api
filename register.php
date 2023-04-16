<?php

include "./Inc/init_inc.php";

// function returns true, if username already exists
function username_exists($user){
    $sql->where("user", $user);
    if($sql->getValue("users", "COUNT(*)") > 0) return true;
    return false;
}

if(check_fields(['username', 'pass', 're-pass'])){
    if(username_exists($_POST['username'])){
        echo "1";
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
</head>
<body>
    <form action="./register.php" method="post">
        <input placeholder="Username" type="text" name="username">
        <input placeholder="Password" type="password" name="pass">
        <input placeholder="Re-enter password" type="password" name="re-pass">
        <button>Register</button>
    </form>
</body>
</html>
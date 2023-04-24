<?php

include "./Inc/init_inc.php";
include "./Inc/usr_func.php";


if(!check_login()){
    header("Location: ./login.php");
}


?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View documents</title>
</head>
<body>
    <h1>Glad that you're logged in <?= get_username() ?></h1>
    
</body>
</html>
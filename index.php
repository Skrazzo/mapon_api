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

    <link rel="stylesheet" href="./CSS/index.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.4/font/bootstrap-icons.css">
</head> 
<body style="display: flex;">
    <div class="sidebar">
        <p class="center-p">Welcome <?= get_username() ?> <i class="logout-btn bi bi-box-arrow-left"></i></p>
    </div>
    
</body>
</html>
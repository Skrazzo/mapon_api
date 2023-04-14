<?php

// this file includes all files required

// start session if needed
@session_start();

// start database
include "./Lib/var.php";
include "./Lib/db.php";

$sql = new MysqliDb($db_host, $db_user, $db_pass, $db_name);

// include functions
include "./Inc/func.php";



?>
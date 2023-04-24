<?php

include "./Inc/init_inc.php";
// checks login
if(!check_login()){
    header("Location: ./login.php");
}


?>
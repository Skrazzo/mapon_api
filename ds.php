<?php

// log user out
function log_out(){
    @session_destroy();
}


log_out();
header("Location: ./login.php");

?>
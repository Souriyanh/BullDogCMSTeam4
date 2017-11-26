<?php

$db['db_host'] = "localhost";
$db['db_user'] = "kylejost_ferris";
$db['db_pass'] = "D!etC0ke";
$db['db_name'] = "kylejost_ferris";

#Changing values into constants.  Supposed to be more secure.
foreach($db as $key => $value){

    define(strtoupper($key), $value);
}

$connection = mysqli_connect(DB_HOST, DB_USER, DB_PASS, DB_NAME);

if($connection) {

    //echo "We are connected";
}

?>
<?php

function db_connect() {
   include('db_vars.php'); 
   //username, password, database
   //$result = new mysqli('localhost', 'sticker_sc', 'password', 'sticker_sc');
   $result = new mysqli($db_server, $db_user_name, $db_password, $db_name);
   if (!$result) {
      return false;
   }
   $result->autocommit(TRUE);
   return $result;
}

function db_result_to_array($result) {
   $res_array = array();

   for ($count=0; $row = $result->fetch_assoc(); $count++) {
     $res_array[$count] = $row;
   }

   return $res_array;
}

?>

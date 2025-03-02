<?php
$friends = [
    "Ahmed Gamal" => "AG",
    "Osama Mohamed" => "OM",
    "Mahmoud Gamal" => "MG",
    "Ahmed Samy" => "AS"
  ];
  
  $result=array_flip($friends);
  $result=array_change_key_case($result,CASE_LOWER);
  echo '<pre>';
  print_r(array_reverse( $result));
  echo '</pre>';


?>

<?php
$str = 'aAa';
$num = 3;
$char = "_";
$str[1]='a';
$str2=($str . $char);
echo str_repeat($str2,$num) ;

// aaa_aaa_aaa_
?>

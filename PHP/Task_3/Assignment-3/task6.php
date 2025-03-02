<?php
$url1 = "http://www.elz ero.org";
$url2 = "http://¥elzero.org";
$url3 = "https://elzero.org";
$url4 = "https://elzero.o¥rg";

echo str_replace(" ","",$url1,$r);
echo '<br>';
echo str_replace("¥","",$url2,$r);
echo '<br>';
echo str_replace("¥","",$url3,$r);
echo '<br>';
echo str_replace("¥","",$url4,$r);


?>

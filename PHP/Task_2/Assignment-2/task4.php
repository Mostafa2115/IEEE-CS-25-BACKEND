<?php
$start = 10;
$end = 0;
$stop = 3;
for ($i=$start;$i>=$end;$i--)
{
    if ($i<10){
      echo "0";
    }
    echo "$i<br>";
    if($i==3)
    {
      break;
    }
}
?>

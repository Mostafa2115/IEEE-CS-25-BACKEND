<?php
$index=0;
while($index<=20)
{
  if($index%2==0){
    echo $index;
    echo "<br>";
  }
  $index++;
}
$index=0;
do{
  if($index%2==0){
    echo $index;
    echo "<br>";
  }
  $index++;  
}while($index<=20)

for ($index=1;$index<=20;$index++)
{
  if($index%2==0)
  {
     echo "$index<br>";
  }
}
?>

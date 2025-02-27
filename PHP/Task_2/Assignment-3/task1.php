<?php
   function greeting($name,$gender=" ")
   {
    if ($gender=="Male")
    {
        echo "Hello Mr $name" ."<br>";
    }
    else if ($gender=="Female")
    {
        echo "Hello Miss $name" ."<br>";
    }
    else if ($gender==" ")
    {
        echo "Hello $name";
    }
   }
   echo greeting("Osama", "Male"); // Hello Mr Osama
echo greeting("Eman", "Female"); // Hello Miss Eman
echo greeting("Sameh");
?>

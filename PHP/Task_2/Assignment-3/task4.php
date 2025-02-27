<?php
    function multiply(...$nums)
    {
        $sum=1;
        foreach($nums as $num):
            if (is_numeric($num))
            {
                if (is_float($num))
                {
                    $sum*=((int)$num);
                }
                else{
                    $sum*=$num;
                }
            }
        endforeach;
        echo $sum . "<br>";
    }
    echo multiply(10, 20); // 200
echo multiply("A", 10, 30); // 300
echo multiply(100.5, 10, "B"); // 1000
    
?>

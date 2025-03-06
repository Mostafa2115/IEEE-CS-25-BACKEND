<?php

$drives = ['C:', 'D:', 'E:', 'F:', 'G:']; 
$sizes = [];
foreach ($drives as $drive) {
    if (@disk_total_space($drive) !== false) { 
        $size_tb = disk_total_space($drive) / (1024 ** 4); 
        $sizes[] = number_format($size_tb, 2) . " Terabyte";
    }
    if (count($sizes) >= 2) 
      break;
}
foreach ($sizes as $size) {
    echo $size . PHP_EOL;
}
?>

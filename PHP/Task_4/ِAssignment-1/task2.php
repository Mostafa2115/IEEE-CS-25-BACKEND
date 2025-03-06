<?php

$path = "C:/Users/YourUsername/Videos/sample.mp4";
if (file_exists($path)) {
    $file_size_in_bytes = filesize($path);
    $size_mb = floor($file_size_bytes / (1024 * 1024)); 
    $size_kb = floor($file_size_bytes / 1024); 
    echo "Size In Megabyte Is " . $size_mb . PHP_EOL;
    echo "Size In Kilobyte Is " . $size_kb . PHP_EOL;
} else {
    echo "Error: File not found!";
}
?>

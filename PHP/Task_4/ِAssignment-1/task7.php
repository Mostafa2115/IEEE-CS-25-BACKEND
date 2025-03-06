<?php

$path = "elzero.txt";


if (file_exists($path)) {
    $content = file_get_contents($path);
    $new_content = str_replace("Osamaa", "Elzero", $content);
    file_put_contents($path, $new_content);
    echo "done Editing";
} else {
    echo "Error: file isn't found!";
}
?>

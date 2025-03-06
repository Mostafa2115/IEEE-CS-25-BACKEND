<?php
date_default_timezone_set("Africa/Cairo");
$date = "1990-10-01";
$epoch_time = 0; 
$target_time = strtotime($date); 
$diff_in_seconds = $target_time - $epoch_time;
$days = $diff_in_seconds / (60 * 60 * 24); 
$years = $days / 365.25; 
$days_formatted = number_format($days, 1);
$years_formatted = number_format($years, 1);
echo "From Epoch Time Till $date Is Approximately $days_formatted Days" . PHP_EOL;
echo "From Epoch Time Till $date Is Approximately $years_formatted Years" . PHP_EOL;
?>

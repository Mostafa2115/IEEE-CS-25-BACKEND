<?php

date_default_timezone_set("Africa/Cairo");
echo date_default_timezone_get() . PHP_EOL;
$date = new DateTime("2005-10-02");
$date->modify("+15 hours 15 minutes 15 seconds");
echo $date->format("Y, F, l 'dS' H:i:s") . PHP_EOL;
?>

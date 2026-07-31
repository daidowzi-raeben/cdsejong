<?php
$file = $argv[1];
$start = (int)$argv[2];
$length = (int)$argv[3];
$data = file_get_contents($file, false, null, $start, $length);
echo base64_encode($data);
?>

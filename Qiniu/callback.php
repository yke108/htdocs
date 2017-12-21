<?php

$ret = base64_decode($_GET['upload_ret']);
$cbody = json_decode($ret, true);

$url = "http://7xsmg4.com2.z0.glb.clouddn.com/" . $cbody['key'];

echo "<img src='{$url}' />";

//var_dump($cbody);
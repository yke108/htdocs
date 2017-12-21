<?php 
// 获取城市
$cityname = isset($_GET['cityname']) ? htmlspecialchars($_GET['cityname']) : '广州';

// 获取接口回调数据
$data = file_get_contents("http://v.juhe.cn/weather/index?format=2&cityname={$cityname}&key=4c6b9856c0b1aa1bb8f79ce9d3ea05f8");

// 输出
exit($data);
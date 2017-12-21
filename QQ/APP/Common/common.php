<?php
function p($arr){
	return dump($arr, true, $label=null, false);
}function getImage($url,$filename="") {   if(!$url) return false;  $filename='upload/'.time().rand(100,999).'.jpg';  ob_start();   readfile($url);   $img = ob_get_contents();   ob_end_clean();   $fp2=@fopen('./Public/images/'.$filename, "a");   fwrite($fp2,$img);   fclose($fp2);   return $filename; } 

?>
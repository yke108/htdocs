<?php
function p($arr){
	return dump($arr,1,'<pre>',0);
}
function replace_phiz($content){
	preg_match_all('/\[.*?\]/',$content,$arr);
	if($arr[0]){
		$phiz=F('phiz','','./Data/');
		foreach($arr[0] as $v){
			foreach($phiz as $key => $value){
				if($v == '['.$value.']'){
					$content=str_replace($v,'<img src="'.__ROOT__.'/Public/Images/phiz/'.$key.'.gif" />',$content);
					continue;
				}
			}
		}
	}
	return $content;
}
?>
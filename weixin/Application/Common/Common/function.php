<?php

/**
 * GET 请求
 *
 * @param string $url        	
 */
function http_get($url) {
	$oCurl = curl_init ();
	if (stripos ( $url, "https://" ) !== FALSE) {
		curl_setopt ( $oCurl, CURLOPT_SSL_VERIFYPEER, FALSE );
		curl_setopt ( $oCurl, CURLOPT_SSL_VERIFYHOST, FALSE );
	}
	curl_setopt ( $oCurl, CURLOPT_URL, $url );
	curl_setopt ( $oCurl, CURLOPT_RETURNTRANSFER, 1 );
	$output = curl_exec ( $oCurl );
	curl_close($ch);
	return json_decode($output,true);
}
	
/**
 * POST 请求
 *
 * @param string $url        	
 * @param array $param        	
 * @return string content
 */
function http_post($url, $param) {
	$oCurl = curl_init ();
	if (stripos ( $url, "https://" ) !== FALSE) {
		curl_setopt ( $oCurl, CURLOPT_SSL_VERIFYPEER, FALSE );
		curl_setopt ( $oCurl, CURLOPT_SSL_VERIFYHOST, false );
	}
	if (is_string ( $param )) {
		$strPOST = $param;
	} else {
		$aPOST = array ();
		foreach ( $param as $key => $val ) {
			$aPOST [] = $key . "=" . urlencode ( $val );
		}
		$strPOST = join ( "&", $aPOST );
	}
	curl_setopt ( $oCurl, CURLOPT_URL, $url );
	curl_setopt ( $oCurl, CURLOPT_RETURNTRANSFER, 1 );
	curl_setopt ( $oCurl, CURLOPT_POST, true );
	curl_setopt ( $oCurl, CURLOPT_POSTFIELDS, $strPOST );
	$output = curl_exec ( $oCurl );
	curl_close($ch);
	return json_decode($output,true);
}

/**
 * 获取 access_token
 *   	
 * @return string
 */

function get_access_token () {
	// 获取数据库 access_token
	$user_info = M('Access_token')->order("log_id DESC")->find();
	if(!empty($user_info) &&  $user_info['add_time'] + $user_info['expires_in'] > time()) {
		return $user_info['access_token'];
	}
	// 重新调用接口获取 access_token
	$ret = http_get("https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=".APPID."&secret=".APPSECRET);
	if(isset($ret['access_token'])) {
		// 更新到数据表
		M('Access_token')->data(array("access_token"=>$ret['access_token'],"expires_in"=>$ret['expires_in'],"add_time"=>time()))->add();
		return $ret['access_token'];
	} else {
		return '';
	}
}
<?php

function p($param)
{
	echo '<pre>';
	print_r($param);
	echo '</pre>';
	exit;
}

/**
 * 页面跳转
 *
 * @param  string  $url  跳转地址
 * @param  string  $msg  消息内容
 * @return void
 */
function page_location($url, $alert = null, $b_parent = false)
{
  echo '<script type="text/javascript">';
  if(!empty($alert)) echo 'window.alert("' . $alert . '");';
  if(!empty($url))
  {
    echo $b_parent ? 'parent.window.location.href = "' . $url . '";' : 'window.location.href = "' . $url . '";';
  }
  else
  {
    echo $b_parent ? 'parent.window.history.back();' : 'window.history.back();';
  }
  echo '</script>';
  exit();
}

/**
 * 生成随机字符串
 *
 * @desc 字符串包含且只包含大小写英文字母和数字
 * @param int $length 字符串的长度（必须大于0）
 * @return string
 */
function get_rand_string($length = 6)
{
  $str     = '';
  $str_pol = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvwxyz";
  $max     = strlen($str_pol) - 1;
  $length  = ($length > 0) ? $length : 6;
  for($i = 0; $i < $length; $i++)
  {
    $str .= $str_pol[rand(0, $max)];
  }
  return $str;
}

/**
 * 判断权限
 *
 * @param int $user_id 用户ID
 * @return bool
 */
function check_access()
{
  $user_id = (int)$_SESSION['user_id'];
  if($user_id < 1) return false;
  $arr = C('ADMIN_USER');
  foreach($arr as $v)
  {
    if($v['user_id'] == $user_id)
    {
      return true;
    }
  }
  return false;
}
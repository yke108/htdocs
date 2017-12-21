<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
	<title>登录</title>
	<style type="text/css">
		*{padding:0;margin:0;}
		table{margin:0 auto;margin-top:20px;}
	</style>
</head>
<body>
	<form action="<?php echo U(GROUP_NAME.'/Login/runLogin');?>" method="post">
	<table border="1">
		<tr>
			<td colspan="2" align="center">登录</td>
		</tr>
		<tr>
			<td align="right">用 户 名:</td>
			<td>
				<input type="text" name="username" />
			</td>
		</tr>
		<tr>
			<td align="right">密&nbsp;&nbsp;&nbsp;&nbsp;码:</td>
			<td>
				<input type="password" name="password" />
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="登录" />
			</td>
		</tr>
	</table>
	</form>
</body>
</html>
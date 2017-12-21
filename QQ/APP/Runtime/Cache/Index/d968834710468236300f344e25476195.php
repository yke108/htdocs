<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
	<title>注册</title>
	<style type="text/css">
		*{padding:0;margin:0;}
		.hold{margin:0 auto;width:690px;}
		h3{margin: 20px;color:gray;}
		.head{width:690px;height:90px;background:url(__PUBLIC__/images/reg_head.png);margin:20px auto;}
		table{width:690px;margin:0 auto;margin-top:20px;}
		table div{width:306px;height:41px;background:url(__PUBLIC__/images/input.png);border:0;background-repeat:no-repeat;padding:4px;}
		input[type="text"],input[type="password"]{width:298px;height:33px;border:0px;}
	</style>
	<script type="text/javascript" src="__PUBLIC__/js/jquery.js"></script>
	<script type="text/javascript">
	$(function(){
		$('#user_name').blur(function(){
			if($(this).val() == ''){
				$('#check_username').html('<span style="color:red;">请输入昵称</span>');
			}
		});
		$('#user_name').keyup(function(){
			$.post('<?php echo U(GROUP_NAME."/Reg/regAjax");?>',{user_name:$(this).val()},
			function(msg){
				$('#check_username').html('<span style="color:red;">'+msg+'</span>');
			},'json');
		});
		$('#password').blur(function(){
			var a = $(this).val().length;
			if(a<6 || a>16){
				$('#check_password').html('<span style="color:red;">长度为6-16个字符</span>');
			}else{
				$('#check_password').html('<img src="__PUBLIC__/images/ok.png" />');
			}
			$('#check_repassword').html('');
		});
		$('#repassword').blur(function(){
			if($(this).val() != $('#password').val()){
				$('#check_repassword').html('<span style="color:red;">两次输入的密码不一致</span>');
			}else{
				$('#check_repassword').html('<img src="__PUBLIC__/images/ok.png" />');
			}
		});
	});

	</script>

</head>
<body>
<div class="hold">
	<form action="<?php echo U(GROUP_NAME.'/Reg/runReg');?>" method="post" onsubmit="return checkform()">
	<div class="head"></div>
	<h3>注册帐号</h3>
	<table>
		<tr>
			<td align="right" width="30%">昵称 </td>
			<td width="40%">
				<div><input id="user_name" type="text" name="user_name" /></div>
			</td>
			<td width="30%"><p id="check_username"><p></td>
		</tr>
		<tr>
			<td align="right">密码 </td>
			<td>
				<div><input id="password" type="password" name="password" /></div>
			</td>
			<td><p id="check_password"></p></td>
		</tr>
		<tr>
			<td align="right">确认密码 </td>
			<td>
				<div><input id="repassword" type="password" name="repassword" /></div>
			</td>
			<td><p id="check_repassword"></p></td>
		</tr>
		<tr>
			<td colspan="3" align="center">
				<p style="width:245px;color:blue;">已有帐号？请<a href="<?php echo U(GROUP_NAME.'/Login/index');?>">登录</a></p>	
			</td>
		</tr>
		<tr>
			<td colspan="3" align="center">
				<input style="width:180px;height:40px;background-color:#32CD32;" type="submit" value="注册" />
			</td>
		</tr>
	</table>
	</form>
	<br /><br />	

</div>
</body>
</html>
<script type="text/javascript">
	function checkform(){
		var error = true;
		var result = '';
		if($('#username').val() == ''){
			error = false;
			result += '昵称不能为空';
		}
		if($('#password').val() == ''){
			error = false;
			result += '\n\r密码不能为空';
		}
		if(!error){
			alert(result);
		}
		return error;
	}	

</script>
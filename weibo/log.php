<?php
header("Content-Type:text/html;charset=gb2312");
include("conn.php");
if(!empty($_POST['submit'])){
	if(empty($_POST['user'])){
	    exit("<script>alert('用户名不能为空！');location.href='log.php';</script>");
	}
	if(empty($_POST['password'])){
	    exit("<script>alert('密码不能为空！');location.href='log.php';</script>");
	}
	$sql="select * from wb_user where user='{$_POST['user']}'";
	$query=mysql_query($sql);
	if(($result=mysql_fetch_assoc($query))){
    if($result['password']==md5($_POST['password'])){
		  setcookie("user",$result['user'],time()+60*60*24*30);
			setcookie("uid",$result['id'],time()+60*60*24*30);
			setcookie("shell",md5($result['id'].$result['user'].$result['password']."php"),time()+60*60*24*30);
	    exit("<script>alert('登录成功！');location.href='index.php';</script>");
		}else{
		    exit("<script>alert('密码不正确！');location.href='log.php';</script>");
		}
	}else{
	    exit("<script>alert('用户名不存在！');location.href='log.php';</script>");
	}

}

?>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
	<link href="css/css.css" rel="stylesheet" type="text/css" />
	<link rel = "Shortcut Icon" href="./images/favicon.ico">
	<title>微博随时随地发现新鲜事</title>
</head>
<script src="../jquery.js"></script>
<script>

</script>
<body>
	<div class="a0">
		<div>
		    <div style="float:left; margin:5px;">
			    <img style="width:50px; height:55px;" src="./images/favicon.ico" />
			</div>
			<div style="float:left; margin:5px;">
			<div>
			    <span style="font-size:28px; font-family:微软雅黑;"><em>微博</em></span>
			</div>
			<div>
			    <span style="font-size:10px; font-family:微软雅黑;"><em><strong>weibo.com</strong></em></span>
			</div>
			</div>
		</div>
		
	    <div class="a1">
			<a href=""><img src="./images/image1.png" /></a>
		</div>
		
		<div class="a2">
		    <br />&nbsp;&nbsp;普通登录<br />
		    <form action="" method="post" enctype="multipart/form-data">
				<div class="a21">
					<div class="b0"><img class="a210" src="images/user.png" /></div><div class="b01"><input class="a211" type="text" name="user" value="" /></div>
				</div>
				<div class="a22">
					<div class="b1"><img class="a210" src="images/password.png" /></div><div class="b11"><input class="a211" type="password" name="password" value="" /></div>
				</div>
				<br/>
				<input class="a24" type="submit" name="submit" value="登录" />
			</form>
		</div>
		<div class="a3">
		还没有微博？<a class="a31" href="reg.php">立即注册！</a>
		</div>

	</div>
</body>
</html>

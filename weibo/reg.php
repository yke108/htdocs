<?php
header("Content-Type:text/html;charset=gb2312");
include("conn.php");
if(!empty($_POST['submit'])){
	if(empty($_POST['user'])){
	    exit("<script>alert('�û�������Ϊ��!');location.href='reg.php';</script>");
	}
	setcookie("user",$_POST['user']);
	if(empty($_POST['password'])){
	    exit("<script>alert('���벻��Ϊ��!');location.href='reg.php';</script>");
	}
	if($_POST['password']!=$_POST['repassword']){
	    exit("<script>alert('������������벻һ��!');location.href='reg.php';</script>");
	}
	$sql="select * from wb_user where user='{$_POST['user']}'";
	$query=mysql_query($sql);
	if(mysql_fetch_assoc($query)){
	    exit("<script>alert('�û����Ѵ���!');location.href='reg.php';</script>");
	}else{
	    $mdpassword=md5($_POST['password']);
		$time=time();
		$sql="insert into wb_user set user='{$_POST['user']}',password='{$mdpassword}',time='$time'";
		$query=mysql_query($sql);
		$id=mysql_insert_id();
		setcookie("uid",$id);
		setcookie("shell",md5($id.$_POST['user'].$mdpassword."php"));
		exit("<script>alert('ע��ɹ�!');location.href='index.php';</script>");
	}
}
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
	<link href="css/css.css" rel="stylesheet" type="text/css" />
	<link rel = "Shortcut Icon" href="./images/favicon.ico">
	<title>΢��ע��</title>
</head>
<script>
//ajax
function checkuser(){
	var xmlhttp;
	if (window.XMLHttpRequest){
	    // code for IE7+, Firefox, Chrome, Opera, Safari
	    xmlhttp=new XMLHttpRequest();
	}else{
	    // code for IE6, IE5
	    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.open("POST","userpro.php",true);
	xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
	xmlhttp.send("user="+document.getElementById("user").value);
	xmlhttp.onreadystatechange=function(){
	    if (xmlhttp.readyState==4 && xmlhttp.status==200){
		    document.getElementById("check").innerHTML=xmlhttp.responseText;
	    }
	}
}



</script>
<body>
	<div class="a0">
		<div>
		    <div style="float:left; margin:5px;">
			    <img style="width:50px; height:55px;" src="./images/favicon.ico" />
			</div>
			<div style="float:left; margin:5px;">
			<div>
			    <span style="font-size:28px; font-family:΢���ź�;"><em>΢��</em></span>
			</div>
			<div>
			    <span style="font-size:10px; font-family:΢���ź�;"><em><strong>weibo.com</strong></em></span>
			</div>
		</div>
		</div>
		
	    <div class="a1">
			<a href=""><img src="./images/image1.png" /></a>
		</div>
		
		<div class="c0">
		    <div style="font-size:18px; font-family:΢���ź�"><em>��û��΢���ʺţ����ڼ���</em></div><br />
		    <form action="" method="post" enctype="multipart/form-data">
			    ��&nbsp;��&nbsp;����<input type="text" name="user" id="user" onkeyup="checkuser()" value="" />
				<span id="check" style="color:red;"></span><br /><br />
				�������룺<input type="password" name="password" value="" /><br /><br />
				ȷ�����룺<input type="password" name="repassword" value="" /><br /><br />
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input style="background-color:green;color:white;" type="submit" name="submit" value="����ע��" />
			</form>
		</div>
	</div>
</body>
</html>
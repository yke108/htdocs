<?php
	header("Content-Type:text/html;charset=gb2312");
	include("conn.php");
	$user=$_POST['user'];
	//mysql
	$sql="select * from wb_user where user='{$user}'";
	$query=mysql_query($sql);
	if(mysql_num_rows($query)){
		echo $user."ряв╒╡А";
	}else{
		echo "";
	}

?>
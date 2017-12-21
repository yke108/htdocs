<?php
header("Content-Type:text/html;charset=gb2312");
include("conn.php");
if(!empty($_COOKIE['uid'])){
	$sql="select * from wb_user where id={$_COOKIE['uid']}";
	$query=mysql_query($sql);
	if($result=mysql_fetch_assoc($query)){
	    if($_COOKIE['shell']==md5($result['id'].$result['user'].$result['password']."php")){	
		}else{
			exit("<script>alert('非法操作，请登录再操作!');location.href='log.php';</script>");
		}
	}else{
	    exit("<script>alert('请登录后再操作!');location.href='log.php';</script>");
	}
}else{
    exit("<script>alert('请登录后再操作!');location.href='log.php';</script>");
}
?>
<!--以上是验证用户登录COOKIE end-->

<html>
<head>
<title>微博</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<style>
.image{
max-width:145px;
max-height:100px;
}
</style>
<!--评论处隐藏与显示JQuery start-->
<script src="jquery.js" type="text/javascript"></script>
<script>
$(document).ready(function(){
  // 初始化
  $(".reb").hide();
  $(".more").hide();
  $(".hide").hide();
  $(".lt").hide();
  
  // 点击出现评论框
  $(".pl").click(function(){
	  $(this).next().next().toggle();
	  $('textarea[name="pl"]').focus();
  });

  // 点击查看更多评论
  $(".look_more").click(function(){
	  $(this).prev().prev().show();
	  $(this).next().show();
	  $(this).hide();
	  $(this).prev().hide();
  });

  // 点击隐藏更多评论
  $(".hide").click(function(){
	  $(this).prev().prev().prev().hide();
	  $(this).hide();
	  $(this).prev().prev().show();
	  $(this).prev().show();
  });

  // 大图
  $(".image").click(function(){
	  $(this).removeClass("image");
	  $(this).next().show();
  });

  // 小图
  $(".lt").click(function(){
	  $(this).prev().addClass("image");
	  $(this).hide();
  });
});
</script>
<!--评论处隐藏与显示JQuery end-->
</head>

<body style="background-color:#66FF99;">

<div style="margin:0 auto; padding:10px; width:900px; background-color:#FFCCCC; border:2px solid #0033FF;">

<font color="#0033FF">欢迎</font> <font color='red'><?php echo $_COOKIE['user']; ?></font>，<a href='logout.php'>退出登录</a><br/><br />

<!--评论和回复表单内容插入数据库start-->
<?php
if(!empty($_POST['content'])&&!empty($_POST['title'])){
  $user = $_COOKIE['user'];
	$title = $_POST['title'];
	$content = $_POST['content'];
	// 判断是否重复插入
	$sql="select * from wb_comment where user='{$user}'and title='{$title}' and content='{$content}'";
	$query=mysql_query($sql);
	if(mysql_fetch_assoc($query) === false)
	{
		$datetime = time();
	  $sql="insert into wb_comment set user='{$user}',title='{$title}',content='{$content}',datetime='{$datetime}'";
		$conn=mysql_query($sql);
		$id = mysql_insert_id();
		
		if(!empty($_FILES['file'])){
		    if($_FILES['file']['error']==0){
			    switch($_FILES['file']['type']){
				    case "image/jpeg":
						$hz=".jpg";
						break;
					case "image/pjpeg":
						$hz=".jpg";
						break;
					case "image/gif":
						$hz=".gif";
						break;
					case "image/x-png":
						$hz=".png";
						break;
					case "image/png":
						$hz=".png";
						break;
					default:
					    $hz=false;
				}
				if($hz){
				    move_uploaded_file($_FILES['file']['tmp_name'],"./images/upload/".$id.$hz);
				}else{
					exit("<script>alert('不能展示非jpg/png/gif格式文件！');location.href='index.php';</script>");
				}
			}
		}
	}
}
if(!empty($_POST['pl'])){
    $user = $_COOKIE['user'];
	$content = $_POST['pl'];
	$datetime = time();
	$uid = $_POST['id'];
    $sql="insert into wb_post set user='{$user}',content='{$content}',datetime='{$datetime}',uid ='{$uid}'";
	mysql_query($sql);
}

?>
<!--评论和回复表单内容插入数据库end-->

<!--评论表单start-->
<div >
<form action="" method="post" enctype="multipart/form-data">
<font color="#9933CC" size="-1">标题：</font><textarea style="vertical-align:text-top; resize:none;" rows="1" cols=50 name="title" value=""></textarea><br />
<font color="#9933CC" size="-1">内容：</font><textarea style="vertical-align:text-top; resize:none;" rows="3" cols=50 name="content" value=""></textarea><br />
<font color="#9933CC" size="-1">相片：</font><input type="file" name="file" /><font color="#FF0000" size="-1"><?php if(!isset($hz) || !$hz){echo "请选择jpg/png/gif文件";} ?></font><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" name="subfb" value="发表" />
</form>
</div>

<!--评论表单end-->

<hr size="5" noshade="noshade" />

<!--显示评论内容start-->
<?php
	include 'page.php';
	$page_obj = new page();
	// 获取总数
	$sql = "select count(*) as c from wb_comment";
	$query = mysql_query($sql);
	$result = mysql_fetch_assoc($query);
	$total = $result['c'];
	// 获取当前页数
	$p = isset($_GET['p']) ? (int)$_GET['p'] : 1;
	$p = $p > 0 ? $p : 1;
	// 设置页数量
	$pagesize = 10;
	$page_obj->set($pagesize, $total, $p);
  $limit = $page_obj->limit();
  $num = 0;
	$sql = "select * from wb_comment order by id desc limit {$limit}";
	$query = mysql_query($sql);
	while($result = mysql_fetch_assoc($query)){
?>
<h3 style="color:#000066;"><strong><?php echo $result['title']; ?></strong></h3>
<font style="line-height:12px;" color="#666666" size="-4"><strong><?php date_default_timezone_set("PRC"); echo "用户:".$result['user']." ".date("Y-m-d h:i:s",$result['datetime'])." ".(++$num + ($p - 1) * 10)."楼 "; ?></strong></font>
<p style="text-indent:20px; font-family:楷体_GB2312;"><?php echo $result['content']; ?></p>

<!--显示图片start-->
<?php
    $src="./images/upload/".$result['id'];
	if(file_exists($image=$src.".jpg")){
	    echo "<img width='800px' class='image' src='{$image}' />";
	}elseif(file_exists($image=$src.".png")){
	    echo "<img width='800px' class='image' src='{$image}' />";
	}elseif(file_exists($image=$src.".gif")){
	    echo "<img width='800px' class='image' src='{$image}' />";
	}
?>
<!--显示图片end-->

<a href='javascript:' class="lt" style="color:#0033FF; font-size:10px; text-decoration:underline;">缩小</a><br />
<div class="pl" style="background-image:url(images/pl.png); width:60px; height:23px;"></div><br />

<!--回复表单start-->
<div class="reb" style="clear:left;">
	<form action="" method="post">
		<textarea style="resize:none;" rows="3" cols=50 name="pl" value=""></textarea><br />
		<input type="hidden" name="id" value="<?php echo $result['id']; ?>" />
		<input type="submit" name="subpl" value="我也来说一句" />
	</form>
</div>
<!--回复表单end-->

<!--显示回复内容-->
<?php
	$sql = "select * from wb_post where uid={$result['id']}";
	$query1 = mysql_query($sql);
	$num_a =mysql_num_rows($query1);
	$sql = "select * from wb_post where uid={$result['id']} limit 5";
	$query2= mysql_query($sql);
	while($result1 = mysql_fetch_assoc($query2)){
?>
	<div style="line-height:20px; font-size:10px;">
		<span style="color:#003399;"><?php echo $result1['user']; ?></span>回复：<?php echo $result1['content']; ?><br />
		<font color="#999999" size="-4"><?php echo date("Y-m-d h:i:s",$result1['datetime']); ?></font>
	</div>
<?php
    }//while end
	
	//条数大于5的评论--start
	if($num_a>5){
	$n1=$num_a-5;
	$sql = "select * from wb_post where uid={$result['id']}";
	$query2= mysql_query($sql);
	for($i=0;$i<5;$i++){
	    $result1 = mysql_fetch_assoc($query2);
	}
	echo "<div class='more'>";
	while($result1 = mysql_fetch_assoc($query2)){
?>
	<div style="line-height:20px; margin:0; padding:0; font-size:10px;">
		<span style="color:#003399;"><?php echo $result1['user']; ?></span>回复：<?php echo $result1['content']; ?><br />
		<font color="#999999" size="-4"><?php date_default_timezone_set("PRC"); echo date("Y-m-d h:i:s",$result1['datetime']); ?></font>
	</div>
<?php
	}//while($result1 = mysql_fetch_assoc($query2))--end
	echo "</div>";
	echo "<span style='font-size:10px;' class='rest'>还有{$n1}条回复，查看</span>";
	echo "<a href='javascript:' style='font-size:10px; text-decoration:underline; color:#0033FF;' class='look_more'>更多</a>";
	echo "<a href='javascript:' style='font-size:10px; text-decoration:underline; color:#0033FF;' class='hide'>收起</a>";
	}//if($num_a>5)---end
	//条数大于5的评论--start
?>
<!--显示回复内容end-->
<hr />
<?php
}//while end
?>
<!--显示评论内容end-->

<!--内容分页start-->
<style type="text/css">
	.page{font-size: 11px;}
	.page a{display:inline-block;background:#7DC556;padding:0 10px;line-height:30px;text-decoration:none;}
	.page span{display:inline-block;background:#CDCDCD;padding:0 10px;line-height:30px;text-decoration:none;}
	.page input[type=button]{background:#F1F8B4}
</style>
<div class="page" align="center">
<?php echo $page_obj->output();?>
</div>
<!--内容分页end-->

</div>
<div style="width:100%; height:70px; background-color:#999999;"><h1 align="center" style="line-height:70px;">谢谢支持</h1></div>
<hr size="5" noshade="noshade" />

</body>
</html>
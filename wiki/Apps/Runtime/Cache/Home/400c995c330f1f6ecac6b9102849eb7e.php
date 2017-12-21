<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>wiki后台</title>
</head>
<frameset rows="60,*" frameborder="0" border="0">
	<frame src="<?php echo U('Home/Index/top');?>" name="topFrame" id="topFrame" title="topFrame" scrolling="no" />
	<frameset cols="264,*" frameborder="1" border="1" id="bodyFrame">
	  <frame src="<?php echo U('Home/Index/left');?>" name="leftFrame" scrolling="No" noresize="noresize" id="leftFrame" title="left" />
	  <frame src="<?php echo ($url); ?>" name="mainFrame" id="mainFrame" title="mainFrame" />
	</frameset>
</frameset>
<noframes><body>
</body></noframes> 
</html>
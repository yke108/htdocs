<?php if (!defined('THINK_PATH')) exit();?><html>
<head>
	<title>更换头像</title>
	<link rel="stylesheet" type="text/css" href="__PUBLIC__/css/style.css" />
	<script type="text/javascript" src="__PUBLIC__/js/jquery.js"></script>

</head>
<body>
<div style="height:150px;"></div>
<form action="<?php echo U(GROUP_NAME.'/Index/tou_done');?>" method="post" enctype="multipart/form-data">
<div class="t_body">
	<div class="t_head" style="background:url(__PUBLIC__/images/touXiang.jpg);"></div>
	<div style="height:30px;"><div style="position:relative;top:15px;left:120px;">预览：</div></div>
	<div style="width:60px;height:60px;margin:0 auto;background:green;">
		<img id="pre_look" width="60px" height="60px;" src="__PUBLIC__/images/<?php echo ($user_info["logo"]); ?>" />
	</div>
	<div style="width:30px;margin:10px auto;">60x60</div>
	<div class="file-box"> 
		<form action="" method="post" enctype="multipart/form-data"> 
			<input type='text' name='textfield' id='textfield' class='txt' /> 
			<input type='button' class='t_btn' value='浏览...' /> 
			<input type="file" name="fileField" class="t_file" id="fileField" size="28" />
			<input type="submit" name="submit" class="t_btn" value="上传" /> 
		</form> 
	</div> 
</div>
</form>
</body>
</html>
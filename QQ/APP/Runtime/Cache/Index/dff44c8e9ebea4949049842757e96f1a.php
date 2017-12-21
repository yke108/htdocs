<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">

<head>

	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">

	<title>主面板</title>

	<link rel="stylesheet" type="text/css" href="__PUBLIC__/css/style.css" />

	<script type="text/javascript" src="__PUBLIC__/js/jquery.js"></script>

	<script type="text/javascript" src="__PUBLIC__/js/index.js"></script>

	<script type="text/javascript">

	var addToFriendUrl = '<?php echo U(GROUP_NAME."/Index/addFriendAjax");?>';

	var styleNameUrl = '<?php echo U(GROUP_NAME."/Index/style_name_ajax");?>';

	var messageAgreeUrl = '<?php echo U(GROUP_NAME."/Index/messageAgree");?>';

	var messageRefuseUrl = '<?php echo U(GROUP_NAME."/Index/messageRefuse");?>';

	var remarkUrl = '<?php echo U(GROUP_NAME."/Index/remarkAjax");?>';

	var publicVar = '__PUBLIC__';

	</script>

</head>

<body>

<div id="popDiv" class="mydiv" style="display:none;">

	<!-- <a href="javascript:closeDiv()">关闭窗口</a> -->

	<form action="<?php echo U(GROUP_NAME.'/Index/tou_done');?>" method="post" enctype="multipart/form-data">

		<div align="right" class="t_head" style="background:url(__PUBLIC__/images/touXiang.jpg);">

			<a href="javascript:closeDiv()">

				<div style="width:33px;height:26px;"></div>

			</a>

		</div>

		<div style="height:30px;position:relative;left:-40px;">

			<div>预览：</div>

		</div>

		<div style="width:60px;height:60px;margin:0 auto;">

			<img id="pre_look" width="60px" height="60px;" src="__PUBLIC__/images/<?php echo ($user_info["logo"]); ?>" />

		</div>

		<div style="width:30px;margin:0 auto;">60x60</div>

		<div class="file-box"> 

			<input type='text' name='textfield' id='textfield' class='txt' /> 

			<input type='button' class='t_btn' value='浏览...' /> 

			<input type="file" name="fileField" class="t_file" id="fileField" size="28" />

			<input type="submit" name="submit" class="t_btn" value="上传" /> 

		</div> 

	</form>



</div>

<div id="bg" class="bg" style="display:none;"></div>

<iframe id='popIframe' class='popIframe' frameborder='0' ></iframe>



<div class="main" style="background:url(__PUBLIC__/images/main.jpg);">

	<div class="top">

		<div class="QQ_tou">

			<a title="更换头像" href="javascript:showDiv()"><img width="60px" height="60px;" src="__PUBLIC__/images/<?php echo ($user_info["logo"]); ?>" /></a>

		</div>

		<div class="mingzi">

			<p><strong style="color:#FFF;font-size:14px;"><?php echo ($user_info["user_name"]); ?></strong></p>

			<p style="color:#FFF">

				<input style="width:142px;" title=<?php if(empty($user_info['style_name'])): ?>编辑修改签名<?php else: echo ($user_info["style_name"]); endif; ?> type="text" name="style_name" value=<?php if(empty($user_info['style_name'])): ?>编辑修改签名<?php else: echo ($user_info["style_name"]); endif; ?> />

			</p>

			<p class="little_logo">

				<span>

					<a title="有<?php echo ($user_info["message_num"]); ?>条消息" href="<?php echo U(GROUP_NAME.'/Index/message');?>">

						<img id='message_logo' src="__PUBLIC__/images/messagebox<?php if($user_info["message_num"] > 0): ?>1<?php else: ?>0<?php endif; ?>.png" />

					</a>

				</span>

				<span></span>

				<span></span>

			</p>

			<a title="关闭" href="<?php echo U(GROUP_NAME.'/Login/logout');?>"><div class="logout"></div></a>

		</div>

	</div>

	<div class="search">

		<form id="searchFrom" action="<?php echo U(GROUP_NAME.'/Index/index');?>" method="post" >

		<div style="float:left;"><input style="width:240px;" type="text" name="search" value="<?php if(empty($search)): ?>搜索：联系人<?php else: echo ($search); endif; ?>" /></div>

		<a title="搜索" href="javascript:search_sub()"><div class="search_sub"></div></a>

		</form>

	</div>

	<div class="blank" style="height:35px;">

		<div class="myfriend">

			<a href="<?php echo U(GROUP_NAME.'/Index/index');?>" title="我的好友">

				<div style="width:30px;height:25px;"></div>

			</a>

		</div>
		<div class="mygroup">

			<a href="<?php echo U(GROUP_NAME.'/Index/index');?>" title="我的好友">

				<div style="width:30px;height:25px;"></div>

			</a>

		</div>
		<div class="dialog">

			<a href="<?php echo U(GROUP_NAME.'/Index/dialog');?>" title="会话">

				<div style="width:30px;height:25px;"></div>

			</a>

		</div>

		<div class="add_friend">

			<a href="<?php echo U(GROUP_NAME.'/Index/addFriend');?>" title="添加好友">

				<div style="width:30px;height:25px;"></div>

			</a>

		</div>

	</div>

	<div class="body">

		<?php echo ($body); ?>

	</div>

</div>

</body>

</html>
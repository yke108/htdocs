<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<link rel="stylesheet" href="__PUBLIC__/Css/login.css" />
		<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
		<script type="text/javascript" src="__PUBLIC__/Js/jquery-1.7.2.min.js"></script>
		<script type="text/javascript" src="__PUBLIC__/Js/login.js"></script>
		<link rel="stylesheet" href="__PUBLIC__/Css/public.css" />
		<link rel="stylesheet" href="__PUBLIC__/Css/index.css" />
	</head>

	<body>
		<table>
			<tr style="font-weight:bold;">
				<td>ID</td><td>发布者</td><td>内容</td><td>发布时间</td><td>操作</td>
			</tr>
			
			<?php if(is_array($wish)): foreach($wish as $key=>$v): ?><tr>
				<td><?php echo ($v["id"]); ?></td><td><?php echo ($v["username"]); ?></td><td><?php echo (replace_phiz($v["content"])); ?><td><?php echo (date('Y-m-d H:i:s',$v["time"])); ?></td><td><a href='<?php echo U('MsgManage/delete',array('id'=>$v['id']));?>'>删除</a></td>
			</tr><?php endforeach; endif; ?>
			
			<tr>
				<td colspan='5' align='center'><?php echo ($page); ?></td>
			</tr>
		</table>
	</body>
</html>
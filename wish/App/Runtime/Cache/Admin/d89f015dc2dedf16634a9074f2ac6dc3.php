<?php if (!defined('THINK_PATH')) exit();?><html>
	<body>
		<div style='width:95%; height:auto; color:#339999; border:1px solid #66FFFF; padding:10px;'>
		<p><a href="<?php echo U('Admin/Rbac/addNode');?>">添加应用</a></p>

		<?php if(is_array($node)): foreach($node as $key=>$app): ?><div style="margin:10px; width:90%; height:auto; border:1px solid #CC6600; padding:10px;">
		<p>
			<strong><?php echo ($app["title"]); ?></strong>
			<a href="<?php echo U('Admin/Rbac/addNode',array('pid'=>$app['id'],'level'=>2));?>">添加控制器</a><a href="">[修改]</a><a href="">[删除]</a>
		</p>
		<?php if(is_array($app["child"])): foreach($app["child"] as $key=>$action): ?><div style="margin:10px; width:85%; height:auto; border:1px solid #0033CC; padding:10px;">
		<p>
			<strong><?php echo ($action["title"]); ?></strong>

			<a href="<?php echo U('Admin/Rbac/addNode',array('pid'=>$action['id'],'level'=>3));?>">添加方法</a>
		</p>
		<?php if(is_array($action["child"])): foreach($action["child"] as $key=>$v): ?><strong><?php echo ($v["title"]); ?></strong><a href="">[修改]</a><a href="">[删除]</a><?php endforeach; endif; ?>
		</div><?php endforeach; endif; ?>
		</div><?php endforeach; endif; ?>
		</div>
	</body>
</html>
<?php if (!defined('THINK_PATH')) exit(); if(empty($friend_list)): ?><p align="center" style="line-height:25px;">
	<?php if(empty($search)): ?>你还没有一个好友哦~~<br /><a href="<?php echo U(GROUP_NAME.'/Index/addFriend');?>">赶紧添加好友吧</a><?php else: ?>无“<?php echo ($search); ?>”的搜索结果<?php endif; ?>
	</p>
<?php else: ?>
<ul class="user_list">
	<?php if(is_array($friend_list)): foreach($friend_list as $key=>$v): ?><li>
		<div class="user_img" style="padding-left:5px;">
			<a title="修改备注" href="javascript:remark(<?php echo ($v["friend_id"]); ?>,'<?php echo ($v["remark"]); ?>')"><img width="40px" height="40px" src="__PUBLIC__/images/<?php echo ($v["logo"]); ?>" /></a>
		</div>
		<div class="user_info" style="padding-left:5px;">
		<p id='remark_<?php echo ($v["friend_id"]); ?>'>
			<?php if(empty($v['remark'])): echo ($v["user_name"]); else: echo ($v["remark"]); ?><font color="gray">(<?php echo ($v["user_name"]); ?>)</font><?php endif; ?>
		</p>
		<p style="color:#808080;"><?php if(empty($v['style_name'])): ?>这家伙很懒，什么都没留下<?php else: echo ($v["style_name"]); endif; ?></p>
		</div>
		<div class="chattips"><a href="<?php echo U(GROUP_NAME.'/Index/chat',array('user_id'=>$v['friend_id']));?>" target="_blank"><img title="聊天" src="__PUBLIC__/images/chat.png" /></a> 
		</div>
	</li><?php endforeach; endif; ?>
</ul><?php endif; ?>
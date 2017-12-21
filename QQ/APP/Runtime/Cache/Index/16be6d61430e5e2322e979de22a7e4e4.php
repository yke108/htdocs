<?php if (!defined('THINK_PATH')) exit(); if(empty($dialog)): ?><p align="center" style="line-height:25px;">
	你还没有会话记录哦~~
	</p>
<?php else: ?>
<ul class="user_list">
	<?php if(is_array($dialog)): foreach($dialog as $key=>$v): ?><li>
		<div class="user_img" style="padding-left:5px;"><img width="40px" height="40px" src="__PUBLIC__/images/<?php echo ($v["logo"]); ?>"></div>
		<div class="user_info" style="padding-left:5px;">
		<p>
			<?php if(empty($v['remark'])): echo ($v["friend_name"]); else: echo ($v["remark"]); ?><font color="gray">(<?php echo ($v["friend_name"]); ?>)</font><?php endif; ?>
		</p>
		<p style="color:#808080;"><?php echo ($v["content"]); ?></p>
		</div>
		<div style="width:55px;height:15px;float:left;margin:5px;"><?php echo ($v["time"]); ?></div>
		<div style="position:relative;float:left;width:30px;height:30px;left:5px;"><a href="<?php echo U(GROUP_NAME.'/Index/chat',array('user_id'=>$v['friend_id']));?>" target="_blank"><img title="聊天" src="__PUBLIC__/images/chat.png" /></a> 
		</div>
	</li><?php endforeach; endif; ?>
</ul><?php endif; ?>
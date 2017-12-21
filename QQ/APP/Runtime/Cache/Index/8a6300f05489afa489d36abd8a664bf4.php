<?php if (!defined('THINK_PATH')) exit();?><div style="color:gray;padding:10px 5px 3px 5px;">
	请求添加的好友列表
</div>
<ul class="user_list">
	<?php if(is_array($message_list)): foreach($message_list as $key=>$v): ?><li id="message_<?php echo ($v["user_id"]); ?>">
		<div class="user_img"><img width="40px" height="40px" src="__PUBLIC__/images/<?php echo ($v["logo"]); ?>"></div>
		<div class="user_info">
			<p style="width:170px;height:20px;color:red;"><?php echo ($v["user_name"]); ?>
			<font style="color:#808080;">
				（<?php if(empty($v['style_name'])): ?>这家伙很懒，什么都没留下<?php else: echo ($v["style_name"]); endif; ?>）
			</font>
			</p>
			<p style="width:170px;height:20px;">附加消息：<?php echo ($v["ps"]); ?></p>
		</div>
		<div style="float:left;width:40px;height:40px;position:relative;top:3px;left:5px;padding-top:0px;">
			<button style="width:38px;height:25px;" onclick="message_agree(<?php echo ($v["user_id"]); ?>)">同意</button>
			<button style="width:38px;height:25px;" onclick="message_refuse(<?php echo ($v["user_id"]); ?>)">拒绝</button>
		</div>
	</li><?php endforeach; endif; ?>
</ul>
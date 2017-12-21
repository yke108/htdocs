<?php if (!defined('THINK_PATH')) exit();?><div style="height:26px;background:url(__PUBLIC__/images/searchFriend.jpg);">
<form action="<?php echo U(GROUP_NAME.'/Index/addFriend');?>" method="post" id="search1">
<input type="text" name="searchFriend" value="" />
<a title="搜索" href="javascript:search_sub1()"><div class="search1"></div></a>
</form>
</div>
<div style="color:gray;padding:10px 5px 3px 5px;">
	推荐
</div>
<ul class="user_list">
	<?php if(is_array($rand_friends)): foreach($rand_friends as $key=>$v): ?><li>
		<div class="user_img"><img width="40px" height="40px" src="__PUBLIC__/images/<?php echo ($v["logo"]); ?>"></div>
		<div class="user_info">
			<p style="color:red;"><?php echo ($v["user_name"]); ?></p>
			<p style="color:#808080;">
				<?php if(empty($v['style_name'])): ?>这家伙很懒，什么都没留下<?php else: echo ($v["style_name"]); endif; ?>
			</p>
		</div>
		<div class="add_but">
			<button style="width:38px;height:25px;" onclick="addToFriend(<?php echo ($v["user_id"]); ?>)">添加</button>
		</div>
	</li><?php endforeach; endif; ?>
</ul>

<div style="color:gray;padding:10px 5px 3px 5px;">
	可能认识的人
</div>
<ul class="user_list">
	<?php if(is_array($users)): foreach($users as $key=>$v): ?><li>
		<div class="user_img"><img width="40px" height="40px" src="__PUBLIC__/images/<?php echo ($v["logo"]); ?>"></div>
		<div class="user_info">
			<p style="color:red;"><?php echo ($v["user_name"]); ?></p>
			<p style="color:#808080;">
				<?php if(empty($v['style_name'])): ?>这家伙很懒，什么都没留下<?php else: echo ($v["style_name"]); endif; ?>
			</p>
		</div>
		<div class="add_but">
			<button style="width:38px;height:25px;" onclick="addToFriend(<?php echo ($v["user_id"]); ?>)">添加</button>
		</div>
	</li><?php endforeach; endif; ?>
</ul>
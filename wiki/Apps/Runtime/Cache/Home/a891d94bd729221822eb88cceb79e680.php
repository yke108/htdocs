<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
   <title>头部</title>
   <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<style type="text/css">
   body{
      margin: 0 10px;
   }
   li{
      margin: 5px;
   }
</style>
<body>
   <div id="myTabContent" class="tab-content">
      <div class="tab-pane fade in active" id="read" style="padding:10px;">
         <p>
            <h1>首页</h1>
            <hr />
            <p style="margin-top:50px;margin-bottom:10px;">
               登录信息：
            </p>
            <?php if($access): ?><ul>
               <li>您 的 ID：<?php echo (session('user_id')); ?></li>
               <li>您的角色：管理员</li>
               <li><a href="<?php echo U('Home/Index/logout');?>">退出登录</a></li>
            </ul>
            <?php else: ?>
            <ul>
               <li>您的ID：未登录</li>
               <li><a href="<?php echo U('Home/Index/login');?>" target="_top">立即登录</a></li>
            </ul><?php endif; ?>
         </p>
      </div>
   </div>
</body>
</html>
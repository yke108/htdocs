<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
   <title>头部</title>
   <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
   <link href="/wiki./Apps/Home/Assets/css/bootstrap.min.css" rel="stylesheet">
</head>
<style type="text/css">
   body{
      margin: 0 10px;
   }
</style>
<body>
   <h2>编辑菜单</h2>
   <hr />
   <form action="<?php echo U('Home/Action/menu', 'act=edit');?>" method="post" role="form">
      <div class="form-group">
         <label for="menu_name">菜单名称：</label>
         <input type="text" class="form-control" name="menu_name" id="menu_name" value="<?php echo ($menu_info["menu_name"]); ?>" required />
      </div>
      <div class="form-group">
         <label for="sort_order">排序号：</label>
         <input type="text" class="form-control" name="sort_order" id="sort_order" value="<?php echo ($menu_info["sort_order"]); ?>" required />
      </div>

      <!-- IF menu_info.parent_id -->
      <div class="form-group">
         <label for="summary">菜单简介：</label>
         <textarea class="form-control" name="summary" id="summary" rows="3"><?php echo ($menu_info["summary"]); ?></textarea>
      </div>
      <!-- ELSE -->
      <!--
      <div class="form-group">
         <label for="catalog">设置权限用户ID：</label>
         <textarea class="form-control" name="catalog" id="catalog" rows="5"><?php echo ($menu_info["catalog"]); ?></textarea>
         <span>注意：<br />多个用户ID用英文逗号隔开，比如：1000001,1000002,1000003<br />如果用户ID中存在“-1”，那么对所有人可见</span>
      </div>
      -->
      <!-- ENDIF -->

      <input type="hidden" name="menu_id" value="<?php echo ($menu_info["menu_id"]); ?>" />
      <button type="submit" class="btn btn-default">提交</button>
   </form>
</body>
</html>
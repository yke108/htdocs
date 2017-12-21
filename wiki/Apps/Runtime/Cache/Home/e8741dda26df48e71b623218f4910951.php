<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
   <title>头部</title>
   <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
   <link href="/wiki/Apps/Home/Assets/css/bootstrap.min.css" rel="stylesheet">
</head>
<style type="text/css">
   body{
      margin: 0 10px;
   }
</style>
<body>
   <h2>添加“<?php echo ($menu_info["menu_name"]); ?>”的子菜单</h2>
   <hr />
   <form action="<?php echo U('Home/Action/menu', 'act=add');?>" method="post" role="form">
      <div class="form-group">
         <label for="menu_name">菜单名称：</label>
         <input type="text" class="form-control" name="menu_name" id="menu_name" value="" required />
      </div>
      <div class="form-group">
         <label for="summary">菜单简介：</label>
         <textarea class="form-control" name="summary" id="summary" value="" rows="3"></textarea>
      </div>
      <input type="hidden" name="parent_id" value="<?php echo ($menu_info["menu_id"]); ?>" />
      <button type="submit" class="btn btn-default">提交</button>
   </form>
</body>
</html>
<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
   <title>头部</title>
   <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
   <link href="/wiki/Apps/Home/Assets/css/bootstrap.min.css" rel="stylesheet">
   <script type="text/javascript" src="/wiki/Apps/Home/Assets/js/jquery.min.js"></script>
</head>
<style type="text/css">
   body{
      margin:0 10px;
   }
</style>
<body>
   <form id="menuForm" class="form-inline" role="form" action="" method="get" style="margin-top: 10px;">
     <div class="form-group">
        <label>一级菜单：</label>
        <select class="form-control" style="width: 160px;" name="menu_id" id="top_menu_id">
          <?php echo ($select_str); ?>
        </select>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="<?php echo U('Home/Main/menu_edit', 'menu_id='.$menu_info['menu_id']);?>">编辑</a> | <a onclick="if(!confirm('确定删除“<?php echo ($menu_info["menu_name"]); ?>”吗？')) return false;" href="<?php echo U('Home/Action/menu', 'act=del&menu_id='.$menu_info['menu_id']);?>">删除</a>
     </div>
  </form>
   <table class="table table-bordered" style="margin-top: 10px;">
      <tbody>
         <tr align="center">
            <td style="background:#B6D1DB;">菜单ID</td>
            <td style="background:#B6D1DB;">菜单名</td>
            <td style="background:#B6D1DB;">排序</td>
            <td style="background:#B6D1DB;">用户ID</td>
            <td style="background:#B6D1DB;">添加时间</td>
            <td style="background:#B6D1DB;">操作</td>
         </tr>

        <?php if(is_array($child_menu_list)): foreach($child_menu_list as $k=>$v): ?><tr align="center">
            <td><?php echo ($v["menu_id"]); ?></td>
            <td><a href="<?php echo U('Home/Main/main', 'menu_id='.$v['menu_id']);?>"><?php echo ($v["menu_name"]); ?></a></td>
            <td><?php if($k != 0): ?><a href="<?php echo U('Home/Action/menu', 'act=sort&menu_id='.$v['menu_id']);?>"><img src="/wiki/Apps/Home/Assets/images/toTop.png"></a><?php endif; ?></td>  
            <td><?php echo ($v["user_id"]); ?></td>  
            <td><?php echo ($v["add_time"]); ?></td>    
            <td>
               【<a href="<?php echo U('Home/Main/menu_edit', 'menu_id='.$v['menu_id']);?>"  title="编辑">编辑</a>】

               <?php if($v['b_delete']): ?>【<a href="<?php echo U('Home/Action/menu', 'act=del&menu_id='.$v['menu_id']);?>" onclick="if(!confirm('确定删除吗？')) return false;" title="删除">删除</a>】<?php endif; ?>

               【<a href="<?php echo U('Home/Main/article_add', 'menu_id='.$v['menu_id']);?>" style="color:red;" title="添加接口">添加接口</a>】
            </td>
        </tr><?php endforeach; endif; ?>

        <tr align="center">
          <td colspan="6"><a href="<?php echo U('Home/Main/menu_add', 'menu_id='.$menu_info['menu_id']);?>">创建 “ <?php echo ($menu_info["menu_name"]); ?> ” 的子菜单</a></td>
        <tr>
      
      </tbody>
   </table>
   <br />
   <p>创建一级菜单</p>
   <form class="form-inline" role="form" action="<?php echo U('Home/Action/menu', 'act=add');?>" method="post">
      <div class="form-group">
         <label class="sr-only" for="menu_name">菜单名称</label>
         <input type="text" class="form-control" id="menu_name" name="menu_name" placeholder="请输入名称" required>
      </div>
      <div class="form-group">
         <label class="sr-only" for="sort_order">排序号</label>
         <input type="text" class="form-control" id="name" name="sort_order" placeholder="请输入排序号">
      </div>
      <input type="hidden" name="parent_id" value="0" />
      <button type="submit" class="btn btn-default">提交</button>
   </form>
   <script type="text/javascript">
     $("#top_menu_id").change(function(){
          $("#menuForm").submit();
      });
   </script>
</body>
</html>
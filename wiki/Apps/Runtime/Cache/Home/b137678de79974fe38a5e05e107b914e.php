<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
	<title>左边</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <link href="/wiki/Apps/Home/Assets/css/bootstrap.min.css" rel="stylesheet">
  <script src="/wiki/Apps/Home/Assets/js/jquery.min.js"></script>
  <script src="/wiki/Apps/Home/Assets/js/bootstrap.min.js"></script>
</head>
<style type="text/css">
   body{
      margin: 0 10px;
   }
</style>
<body>
<div class="panel-group" id="accordion">

	<div class="panel panel-default">
    <div class="panel-heading" style="background:#B6D1DB;">
      <h4 class="panel-title">
        导航栏
      </h4>
    </div>
  </div>

	<?php if(is_array($menu_list)): foreach($menu_list as $key=>$v): ?><div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion" 
          href="#collapse_<?php echo ($v["menu_id"]); ?>">
          <?php echo ($v["menu_name"]); ?>
        </a>
      </h4>
    </div>
    <div id="collapse_<?php echo ($v["menu_id"]); ?>" class="panel-collapse collapse in">
      <div class="panel-body">
        <ul>

        	<?php if(is_array($v["child"])): foreach($v["child"] as $key=>$_v): ?><li><a href="<?php echo U('Home/Main/main','menu_id='.$_v['menu_id']);?>" target="mainFrame"><?php echo ($_v["menu_name"]); ?></a></li><?php endforeach; endif; ?>

				</ul>
      </div>
    </div>
  </div><?php endforeach; endif; ?>
</div>
</body>
</html>
</html>
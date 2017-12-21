<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
	<title>头部</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <link href="/wiki/Apps/Home/Assets/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<nav class="navbar navbar-default" role="navigation">
		<div class="container">
		   <div class="navbar-header">
		      <a class="navbar-brand" href="<?php echo U('Home/Index/home');?>" target="mainFrame">首页</a>
		   </div>

		   <?php if($access): ?><div class="navbar-header">
		      <a class="navbar-brand" href="<?php echo U('Home/Main/menu_list');?>" target="mainFrame">后台管理</a>
		   </div><?php endif; ?>

		   <div>
		      <form class="navbar-form navbar-left" action="<?php echo U('Home/Main/search');?>" method="get" target="mainFrame">
		         <div class="form-group">
		            <input type="text" class="form-control" name="keyword" placeholder="Search" required>
		         </div>
		         <button type="submit" class="btn btn-default">Search</button>
		      </form>    
		   </div>

		</div>
	</nav>
</body>
</html>
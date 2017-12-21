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
   li{
      margin: 20px;
   }
</style>
<body>
   <div id="myTabContent" class="tab-content">
      <div class="tab-pane fade in active" id="read" style="padding:10px;">
        <h1>搜索“<?php echo ($keyword); ?>”的结果：</h1>
        <hr style="margin:5px;" />
        <ol>
          <?php if(is_array($art_list)): foreach($art_list as $key=>$v): ?><li>
           <a href="<?php echo U('Home/Main/main#art_'.$v['art_id'], 'menu_id='.$v['menu_id']);?>">
              <?php echo ($v["title"]); ?>
              <?php if($v['summary'] != ''): ?><br /><?php echo ($v["summary"]); endif; ?>
              <br /><?php echo ($v["description"]); ?>
           </a>
           </li><?php endforeach; endif; ?>
        </ol>
      </div>
   </div>
</body>
</html>
<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
   <title>头部</title>
   <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
   <link href="/wiki/Apps/Home/Assets/css/bootstrap.min.css" rel="stylesheet">
</head>
<body id="top">

<ul id="myTab" class="nav nav-tabs">
   <li class="active">
      <a data-toggle="tab">阅读</a>
   </li>
</ul>
   
<div id="myTabContent" class="tab-content">
   <div class="tab-pane fade in active" id="read" style="padding:10px;">
      <h2><?php echo ($menu_info["menu_name"]); ?> 

         <!-- IF b_access -->
         <a style="font-size:15px;color:#0645AD;" href="<?php echo U('Home/Main/article_add', 'menu_id='.$menu_info['menu_id']);?>">[添加]</a>
         <!-- ENDIF -->
         
      </h2>
      <hr />
      <div>
         <p>
            <?php echo ($menu_info["summary"]); ?>
         </p>
         目录
         <ol>

         <?php if(is_array($art_list)): foreach($art_list as $key=>$v): ?><li><a href="#art_<?php echo ($v["art_id"]); ?>"><?php echo ($v["title"]); ?></a>
            <?php if($v['is_show'] == 0): ?>[<span style="font-size:small;">已隐藏，<a href="<?php echo U('Home/Action/article', 'act=show&art_id='.$v['art_id']);?>">显示</a></span>]<?php endif; ?>
            </li><?php endforeach; endif; ?>

         </ol>

         <?php if(is_array($art_list)): foreach($art_list as $key=>$v): if($v['is_show'] == 1): ?><h3 id="art_<?php echo ($v["art_id"]); ?>">&nbsp;<?php echo ($v["title"]); ?> 

               <!-- IF b_access -->
               <a style="font-size:small;color:#0645AD;" href="<?php echo U('Home/Main/article_edit', 'art_id='.$v['art_id']);?>">[编辑]</a>
               <a style="font-size:small;color:#0645AD;" href="<?php echo U('Home/Action/article', 'act=del&art_id='.$v['art_id']);?>" onclick="if(!confirm('确定删除吗？')) return false;">[删除]</a>
               <a style="font-size:small;color:#0645AD;" href="<?php echo U('Home/Action/article', 'act=show&art_id='.$v['art_id']);?>">[隐藏]</a>
               <!-- ENDIF -->

            </h3>
            <hr style="margin:10px;margin-bottom:20px;" />

            <!-- IF summary -->
            <?php if(!empty($$v['summary'])): ?><p class="normal" ><strong>功能描述：</strong><?php echo ($v["summary"]); ?></p><br /><?php endif; ?>

            <p class="normal"><strong>引用路径：</strong></p>
            <div class="spc"><?php echo ($v["include_src"]); ?></div><br />
            
            <p class="normal"><strong>调用方式：</strong></p>
            <div class="spc"><?php echo ($v["description"]); ?></div><br />

            <p class="normal"><strong>参数说明：</strong></p>
            <?php echo ($v["content"]); ?><br />

            <?php if(!empty($v["extra_column_1"])): ?><p class="normal"><strong>返回值说明：</strong></p>
            <?php echo ($v["extra_column_1"]); ?><br /><?php endif; ?>

            <?php if(!empty($v["extra_column_2"])): ?><p class="normal"><strong>附加内容：</strong></p>
            <?php echo ($v["extra_column_2"]); ?><br /><?php endif; ?>

            <?php if(!empty($v["cover_img_url"])): ?><p class="normal"><strong>展示图片1：</strong></p>
            <div>
               <img style="max-width:1080px;" src="<?php echo ($v["cover_img_url"]); ?>" />
            </div><?php endif; ?>

            <?php if(!empty($v["cover_img_ur2"])): ?><p class="normal"><strong>展示图片2：</strong></p>
            <div>
               <img style="max-width:1080px;" src="<?php echo ($v["cover_img_url2"]); ?>" />
            </div><?php endif; endif; endforeach; endif; ?>

      </div>
      <br />
      <br />
      <br />
      <br />
      <br />
      <br />
      <br />
      <br />
      <br />
   </div>
</div>
<div id="backtop"><a href="#">TOP</a></div>
<style type="text/css">
   body {
      margin: 0 10px;
   }
   table.gridtable {
      font-family: verdana,arial,sans-serif;
      font-size:11px;
      color:#333333;
      border-width: 1px;
      border-color: #666666;
      border-collapse: collapse;
      min-width:640px;max-width:1080px;width:100%;color:#444;
   }
   table.gridtable th {
      padding: 8px;
      border: 1px #666666 solid;
      background-color: #dedede;
      text-align:center;
   }
   table.gridtable td {
      padding: 8px;
      border: 1px #666666 solid;
      background-color: #ffffff;
   }
   h3 {
      margin-top: 50px;
   }
   .normal {
      margin: 5px;
   }
   .spc {
      border-radius: 10px;
      font-family: monospace;
      height: 50px;
      padding-left: 40px;
      line-height: 50px;
      background: #F9F9F9;
      border: 1px #DEDEDE solid;
   }
   #backtop a {
      position: fixed;
      bottom: 0px;
      left: 1100px;
      color: #333;
      z-index: 1000;
      background: #cfcfcf;
      padding: 10px;
      border-radius: 4px;
      -moz-border-radius: 4px;
      -webkit-border-radius: 4px;
      font-weight: normal;
      text-decoration: none !important;
   }
   #backtop a:hover {
      background: #333;
      color: #fff;
   }  
</style>
</body>
</html>
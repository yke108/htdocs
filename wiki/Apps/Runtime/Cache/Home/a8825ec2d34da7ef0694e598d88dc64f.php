<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
   <title>头部</title>
   <link href="/wiki./Apps/Home/Assets/css/common.css" rel="stylesheet">
   <script type="text/javascript" src="/wiki./Apps/Home/Assets/js/jquery.min.js"></script>
</head>
<style type="text/css">
   body{
      margin: 0 10px;
   }
</style>
<body>
   <form class="form-horizontal" action="<?php echo U('Home/Action/article', 'act=edit');?>" method="post" enctype="multipart/form-data" onsubmit="outHTML()">
      <h2>编辑“<?php echo ($menu_info["menu_name"]); ?>”的接口</h2>
      <hr />
      <div class="control-group">
         <label class="control-label"  onclick="fun()">接口名称 <span style="color:red;">*</span></label>
         <div class="controls">
            <input style="width:100%;" class="input-xlarge" type="text" name="title" value="<?php echo ($art_info["title"]); ?>" required />
         </div>
      </div>
      <div class="control-group">
         <label class="control-label">功能描述</label>
         <div class="controls">
            <input style="width:100%;" class="input-xlarge" type="text" name="summary" value="<?php echo ($art_info["summary"]); ?>" />
         </div>
      </div>
      <div class="control-group">
         <label class="control-label">引用路径 <span style="color:red;">*</span></label>
         <div class="controls">
            <input style="width:100%;" class="input-xlarge" type="text" name="include_src" value="<?php echo ($art_info["include_src"]); ?>" required />
         </div>
      </div>
      <div class="control-group">
         <label class="control-label">调用方式 <span style="color:red;">*</span></label>
         <div class="controls">
            <input style="width:100%;" class="input-xlarge" type="text" name="description" value="<?php echo ($art_info["description"]); ?>" required />
         </div>
      </div>
      <div class="control-group">
         <label class="control-label">参数描述 <span style="color:red;">*</span></label>
         <div class="controls">
            <textarea id='content' style="width:100%;margin-bottom:0;font-size:32px" name="content" class="input-xlarge"  rows="5" required><?php echo ($art_info["content"]); ?></textarea>
            <p>说明：每一字段对应一行，统一格式：“字段#类型#说明”</p>
         </div>
      </div>
      <div class="control-group">
         <label class="control-label">返回值说明 <span style="color:red;">*</span></label>
         <div class="controls">
            <textarea id='extra_column_1' style="width:100%;font-size:32px" name="extra_column_1" class="input-xlarge"  rows="5" required><?php echo ($art_info["extra_column_1"]); ?></textarea>
            <p>说明：每一返回值对应一行，统一格式：“返回值#说明”</p>
         </div>
      </div>
      <div class="control-group">
         <label class="control-label">附加内容</label>
         <div class="controls">
            <textarea id='extra_column_2' style="width:100%;font-size:32px" name="extra_column_2" class="input-xlarge"  rows="5"><?php echo ($art_info["extra_column_2"]); ?></textarea>
            <p>说明：自制表格，用“#”号分隔td（第一行分隔th），换行分隔tr</p>
         </div>
      </div>
      <div class="control-group">
         <label class="control-label">展示图片1</label>
         <div class="controls">
            <input type="file" name="upfile" />
            <?php if(!empty($art_info["cover_img_url"])): ?><span id="img1">
               <a href="<?php echo ($art_info["cover_img_url"]); ?>" target="_blank"><?php echo ($art_info["cover_img_url"]); ?></a> &nbsp;&nbsp;&nbsp;&nbsp;
               <a href="javascript:void(0)" onclick="if(confirm('确定删除吗？')) del_img(1)" style="color:red;text-decoration:none;" title="删除图片">×</a>
            </span><?php endif; ?>
         </div>
      </div>
      <div class="control-group">
         <label class="control-label">展示图片2</label>
         <div class="controls">
            <input type="file" name="upfile2" />
            <?php if(!empty($art_info["cover_img_url2"])): ?><span id="img2">
               <a href="<?php echo ($art_info["cover_img_url2"]); ?>" target="_blank"><?php echo ($art_info["cover_img_url2"]); ?></a>  &nbsp;&nbsp;&nbsp;&nbsp;
               <a href="javascript:void(0)" onclick="if(confirm('确定删除吗？')) del_img(2);" style="color:red;text-decoration:none;" title="删除图片">×</a>
            </span><?php endif; ?>
         </div>
      </div>
      <div class="control-group">
         <label class="control-label">排序</label>
         <div class="controls">
            <input style="width:100%;" class="input-xlarge" type="text" name="sort_order" value="<?php echo ($art_info["sort_order"]); ?>" />
         </div>
      </div>
      <div class="control-group">
         <label class="control-label">显示状态</label>
         <div class="controls">
            <select name="is_show" style="width:100%;">
               <?php echo ($art_info["is_show"]); ?>
            </select>
         </div>
      </div>
      <input type="hidden" name="art_id" value="<?php echo ($art_info["art_id"]); ?>" />
      <div class="control-group">
         <label class="control-label"></label>
         <div class="controls">
            <button type="submit" class="btn btn-primary">提交</button>
         </div>
      </div>
   </form>
   <br />
   <br />
   <br />
   <br />
   <br />
   <br />
   <br />
   <br />
   <script type="text/javascript">
      function outHTML(){
         var content = document.getElementById('content');
         var extra_column_1 = document.getElementById('extra_column_1');
         var extra_column_2 = document.getElementById('extra_column_2');
         content.value = content.value.replace(/\n/gi,"<br />");
         extra_column_1.value = extra_column_1.value.replace(/\n/gi,"<br />");
         extra_column_2.value = extra_column_2.value.replace(/\n/gi,"<br />");
      }
      function del_img(num){
         var art_id = <?php echo ($art_info["art_id"]); ?>;
         $.post("<?php echo U('Home/Action/article', 'act=del_img');?>", {num : num, art_id:art_id}, function(msg){
            if(msg == 1) {
               alert('success!');
               $('#img' + num).hide();
            }else {
               alert('fail!');
            }
         }, 'json');
      }
   </script>
</body>
</html>
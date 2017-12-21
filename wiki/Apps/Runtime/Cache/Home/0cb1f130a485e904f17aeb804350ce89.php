<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
   <title>头部</title>
   <link href="/wiki/Apps/Home/Assets/css/common.css" rel="stylesheet">
</head>
<style type="text/css">
   body {
      margin: 0 10px;
   }
</style>
<body>
   <form class="form-horizontal" action="<?php echo U('Home/Action/article','act=add');?>" method="post" enctype="multipart/form-data" onsubmit="outHTML()">
      <h2>创建“<?php echo ($menu_info["menu_name"]); ?>”的接口</h2>
      <hr />
      <div class="control-group">
         <label class="control-label"  onclick="fun()">接口名称 <span style="color:red;">*</span></label>
         <div class="controls">
            <input style="width:100%;" class="input-xlarge" type="text" name="title" value="" required />
         </div>
      </div>
      <div class="control-group">
         <label class="control-label">功能描述</label>
         <div class="controls">
            <input style="width:100%;" class="input-xlarge" type="text" name="summary" value="" />
         </div>
      </div>
      <div class="control-group">
         <label class="control-label">引用路径 <span style="color:red;">*</span></label>
         <div class="controls">
            <input style="width:100%;" class="input-xlarge" type="text" name="include_src" value="" required />
            <span style="color:#999999;">例如：include '/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php';</span>
         </div>
      </div>
      <div class="control-group">
         <label class="control-label">调用方式 <span style="color:red;">*</span></label>
         <div class="controls">
            <input style="width:100%;" class="input-xlarge" type="text" name="description" value="" required />
            <span style="color:#999999;">例如：SNS_SDK::execute('article.add_info', $param);</span>
         </div>
      </div>
      <div class="control-group">
         <label class="control-label">参数描述 <span style="color:red;">*</span></label>
         <div class="controls">
            <textarea id='content' style="width:100%;margin-bottom:0;font-size:24px;" name="content" class="input-xlarge"  rows="5" required></textarea>
            <p>说明：每一字段对应一行，统一格式：“字段#类型#说明”，例如：<br />
               <p style="color:#999999;border:1px #DBDBDB solid;padding:10px;">
                  $param['cat_id']#int#作品分类ID（*）<br />
                  $param['user_id']#int#用户ID（*）<br />
                  $param['type']#int#作品类型，默认：1
               </p>
            </p>
         </div>
      </div>
      <div class="control-group">
         <label class="control-label">返回值说明 <span style="color:red;">*</span></label>
         <div class="controls">
            <textarea id='extra_column_1' style="width:100%;font-size:24px;" name="extra_column_1" class="input-xlarge"  rows="5" required></textarea>
            <p>说明：每一返回值对应一行，统一格式：“返回值#说明”，例如：<br />
               <p style="color:#999999;border:1px #DBDBDB solid;padding:10px;">
                  1#添加成功<br />
                  0#添加失败<br />
                  -1#参数错误<br />
               </p>
            </p>
         </div>
      </div>
      <div class="control-group">
         <label class="control-label">附加内容</label>
         <div class="controls">
            <textarea id='extra_column_2' style="width:100%;font-size:32px;" name="extra_column_2" class="input-xlarge"  rows="5"></textarea>
            <p>说明：自制表格，用“#”号分隔td（第一行分隔th），换行分隔tr，例如：<br />
               <p style="color:#999999;border:1px #DBDBDB solid;padding:10px;">
                  文件限制#说明<br />
                  文件类型#image/jpeg, image/gif, image/png, image/jpg<br />
                  文件大小#最大不得超过2M<br />
               </p>
            </p>
         </div>
      </div>
      <div class="control-group">
         <label class="control-label">展示图片1</label>
         <div class="controls">
            <input type="file" name="upfile" />
         </div>
      </div>
      <div class="control-group">
         <label class="control-label">展示图片2</label>
         <div class="controls">
            <input type="file" name="upfile2" />
         </div>
      </div>
      <div class="control-group">
         <label class="control-label">排序</label>
         <div class="controls">
            <input style="width:100%;" class="input-xlarge" type="text" name="sort_order" value="0" />
         </div>
      </div>
      <div class="control-group">
         <label class="control-label">显示状态</label>
         <div class="controls">
            <select name="is_show" style="width:100%;">
               <option value="1">显示</option>
               <option value="0">隐藏</option>
            </select>
         </div>
      </div>
      <div class="control-group">
         <label class="control-label"></label>
         <div class="controls">
         		<input type="hidden" name="menu_id" value="<?php echo ($menu_info["menu_id"]); ?>" />
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
   <script type="text/javascript">
      function outHTML(){
         var content = document.getElementById('content');
         var extra_column_1 = document.getElementById('extra_column_1');
         var extra_column_2 = document.getElementById('extra_column_2');
         content.value = content.value.replace(/\n/gi,"<br />");
         extra_column_1.value = extra_column_1.value.replace(/\n/gi,"<br />");
         extra_column_2.value = extra_column_2.value.replace(/\n/gi,"<br />");
      }
   </script>
</body>
</html>
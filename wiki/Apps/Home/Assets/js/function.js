/**
 * 上传图片的回调函数
 * 
 * @param string show_image_id     展示图片的元素ID
 * @param string show_image_url_id 展示图片地址的元素ID
 * @param string img_url           图片的URL地址
 * @return void
 */
function upload_image_callback(show_image_id, show_image_url_id, img_url) {
  $("#"+show_image_id).html("<img src='"+img_url+"' style='max-width:900px;' />");
  $("#"+show_image_url_id).val(img_url);
}

/**
 * 上传多张图片的回调函数
 * @param string show_image_id     展示图片的元素ID
 * @param string show_image_url_id 展示图片地址的元素ID
 * @param string img_url           图片的URL地址
 * @return void
 */
function upload_images_callback(show_image_id, show_image_url_id, img_url) {
  $("#"+show_image_id).append("<div style='float:left;width:200px;height:200px;overflow:hidden;text-align:center;display:table-cell;vertical-align: middle;margin-right:5px;'><img src='"+img_url+"' style='max-width:200px;max-height:200px;' /></div>");
  if($("#"+show_image_url_id).val() != "")
  {
      img_url = $("#"+show_image_url_id).val() + ";\r\n" + img_url;
  }
  $("#"+show_image_url_id).val(img_url);
}

/**
 * 获取页面中被选中的checkbox的值 
 * @param string name     checkbox 的name 属性
 * @return array
 */
function get_checkbox_values(name)
{
  var ids = Array();
  $("input[name='"+name+"\[\]']:checked").each(function(){ids.push(this.value);});
  return ids;
}

jQuery.fn.table = function (options) {
  options = jQuery.extend({
    callback: function () {
      return false;
    }
  }, options || {});

  return this.each(function () {

    //存储DOM元素，以方便从所有的内部结构中获取
    var table = jQuery(this).find("tbody");

    update_table(options);

    /**
     * 获取最新数据
     */
    function update_table(options)
    {
      $.ajax({
        data: options,
        type: "POST",
        dataType: "json",
        success: function (ret)
        {
          var data = ret['model_data'];
          draw_table(data);
        }
      });
    }

    /**
     * 根据数据生成表格
     */
    function draw_table(data)
    {
      table.empty();
      //产生一个表格TR
      var appendTr = function (data) {
        var tr = jQuery("<tr></tr>");
        for (var i in data)
        {
          tr.append(appendTd(data[i]));
        }
        return tr;
      }
      //产生一个表格TD
      var appendTd = function (data)
      {
        return jQuery("<td>" + (data) + "</td>");
      }
      // 生成表格
      for (var i in data)
      {
        table.append(appendTr(data[i]));
      }
    }

    // 回调函数
    options.callback(this);
  });
}


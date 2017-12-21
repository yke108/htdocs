jQuery.fn.table = function (options) {
  options = jQuery.extend({
    callback: function () {
      return false;
    }
  }, options || {});

  return this.each(function () {

    //�洢DOMԪ�أ��Է�������е��ڲ��ṹ�л�ȡ
    var table = jQuery(this).find("tbody");

    update_table(options);

    /**
     * ��ȡ��������
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
     * �����������ɱ��
     */
    function draw_table(data)
    {
      table.empty();
      //����һ�����TR
      var appendTr = function (data) {
        var tr = jQuery("<tr></tr>");
        for (var i in data)
        {
          tr.append(appendTd(data[i]));
        }
        return tr;
      }
      //����һ�����TD
      var appendTd = function (data)
      {
        return jQuery("<td>" + (data) + "</td>");
      }
      // ���ɱ��
      for (var i in data)
      {
        table.append(appendTr(data[i]));
      }
    }

    // �ص�����
    options.callback(this);
  });
}


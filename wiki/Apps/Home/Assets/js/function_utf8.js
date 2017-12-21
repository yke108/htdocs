/**
 * 更新页面指定部分
 * @param string  update_id  指定元素ID
 * @return void
 */
function update_part(update_id)
{
  $.ajax({
	  timeout:3000,
      success:function(data)
	  {
        update_id = '#'+update_id;
        var getHtml = $(data),
        getCode = $('<code></code>').append(getHtml)
        $(update_id).html($(update_id,getCode).html());
		return true;
      },
	  error:function()
	  {
		return false;
	  }
  });
}

/**
 * 显示AJAX请求时候的loading状态
 * @return void
 */
function show_loading()
{
  $(document.body).append('<div class="loading" id="loading"><img src="assets/images/loading.gif"></div>');
  $("#loading").css({'top':$(document).scrollTop()+$(window).height()/2,'left':$(window).width()/2,'position':'absolute'});
}

/**
 * 隐藏AJAX请求时候的loading状态
 * @return void
 */
function hide_loading()
{
  setTimeout(function(){$('#loading').remove();},500);
}

/**
 * 显示AJAX请求时候的loading状态
 * @return void
 */
function show_message(msg)
{
  $(document.body).append('<div class="ajax-message" id="ajax-message"><span>'+msg+'</span></div>');
  $("#ajax-message").css({
    'top':$(document).scrollTop()+$(window).height()/2,
    'left':$(window).width()/2,
    'position':'absolute'
  });
  
  setTimeout(function(){$("#ajax-message").remove();},2000);
}

/**
 * AJAX更新数据
 * @return void
 */
function ajax_handle(action, act, data, update_dom)
{
  var url = 'action/'+action+'_action.php?act='+act;
  arguments[3] || '';
  
  try{
	  $.ajax({
		url:url,
		beforeSend:show_loading(),
		dataType:'json',
		timeout:4000,
		data:data,
		success:function(result) {
		  if(result.code == 0) {
  			if(update_dom!="")
  			{
  			  show_message('操作成功,页面更新中...');
  			}
  			else
  			{
  			  show_message('操作成功');
  			}
		  }
		  else
		  {
		    show_message('操作失败：' + 'code: ' + result.code + 'msg: ' + result.msg);
		  }
		},
		complete:function(XMLHttpRequest,status) {
		  hide_loading();
		  if(status == 'timeout') {
		    show_message('请求超时');
		  }
		  if(update_dom != '')
		  {
  			if(update_part(update_dom) == false)
  			{
  				show_message('页面更新失败');
  			}
		  }
		}
	  })
	}
	catch (e) {
	 show_message(e.name + ": " + e.message);
	}
}


/**
 * AJAX更新页面指定部分
 * @param string  update_part  指定元素ID
 * @param string  parame       参数
 * @param string  url          地址
 * @return void
 */
 function ajax_update_page(update_part, parame, url)
 {
	url = typeof url == 'string'  ? url    : window.location.href;
	
	if(typeof parame == 'object')
	{
		for(var par in parame)
		{
			
			var pattern = par+'=([^&]*)'; 
			var replaceText = par+'='+parame[par];
			if (url.match(pattern)) 
			{ 
				var tmp = '/'+par+'=[^&]*/'; 
				url = url.replace(eval(tmp), replaceText);
			} 
			else 
			{ 
				if (url.match('[\?]')) 
				{ 
					url+='&'+ replaceText; 
				} 
				else 
				{ 
					url+='?'+replaceText; 
				} 
			}
		}
	}
	
	$.ajax({
		timeout:3000,
		url:url,
		success:function(data)
		{
			update_part = '#'+update_part;
			var getHtml = $(data),
			getCode = $('<code></code>').append(getHtml)
			$(update_part).html($(update_part,getCode).html());
			return true;
		},
		error:function()
		{
			return false;
		}
	});
 }
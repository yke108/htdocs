<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en"><head>	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">	<title>与<?php echo ($user["user_name"]); ?>聊天</title>	<style type="text/css">	*{margin:0;padding:0;border:0;font-family:微软雅黑;}	.tatol{margin:0 auto;margin-top:50px;width:596px;height:512px;background:url(__PUBLIC__/images/g1.png);}	.head{height:86px;width:100%;}	.middle{height:288px;width: 100%;overflow:auto;}	ul{padding: 10px;padding-top:0;}	li{}	.line{height: 22px;width: 100%;}	.username{padding-top: 10px;padding-left: 15px;line-height: 40px; vertical-align:middle;}	.bottom{height	: 76px;width: 100%}	textarea{overflow:auto;margin: 10px;width: 577px;height: 65px;resize: none;}	.foot{height:39px;width: 100%;}	span#sub{width: 66px;height: 22px;display:block;margin-left: 504px;margin-top: 7px;}	</style>	<script type="text/javascript" src="__PUBLIC__/js/jquery.js"></script>	<script type="text/javascript">        var wsServer = 'ws://121.201.58.186:2324';        var websocket = new WebSocket(wsServer);        websocket.onopen = function (evt) {			var status = '';			switch (websocket.readyState)			{				case 0:                    status = 'CONNECTING';				    break;				case 1:                    status = 'OPEN';                    var current_user = <?php echo ($current_user); ?>;                    var json = '{"conn":1,"user_id":'+current_user+'}';                    websocket.send(json);				    break;				case 2:                    status = 'CLOSING';				    break;				case 3:				    status = 'CLOSED';				    break;			}			console.log(status);        };        websocket.onmessage = function (evt) {            var json = evt.data;            console.log(json);			var obj = $.parseJSON(json);			if(obj.isself == 0){                $('ul').append(usr_msg(obj.uname,obj.ct,obj.isself,obj.ctime));			}        };		$(function(){            showContent();			document.onkeyup = function (event) { 				var e = event || window.event || arguments.callee.caller.arguments[0];				if (e && e.keyCode == 13) { 					showSubmit();				} 			}; 		});					function usr_msg(u_name,u_msg,u_isself,m_time){		    var msg_color = '';		    if(u_isself == 1){                msg_color = 'green';			}else{                msg_color = 'blue';			}			return "<li style='list-style-type:none;'><span style='color:"+msg_color+";font-size:10px;'>"+u_name+" "+m_time+ "</span><br /><span style='font-size:15px;'>"+u_msg+"&nbsp;<span></li>";		}		function showSubmit(){			var pid = <?php echo ($user["user_id"]); ?>;			var current = <?php echo ($current_user); ?>;			if(current == pid){			    alert('不能自己跟自己聊天');			    return false;			}			var content = $('#content').val();			$.post('<?php echo U(GROUP_NAME."/Index/runChat");?>',				{content:content,pid:pid},				//回调函数start				function(result){                    str = usr_msg(result['uname'],result['content'],1,result['time']);					$('ul').append(str);					var json = '{"pid":'+pid+',"user_id":'+current+',"uname":"'+result['uname']+'","ct":"'+result['content']+'","ctime":"'+result['time']+'"}';					websocket.send(json);				},				//回调函数end				'json'			);			$('#content').val('');		}				function showContent(){			var pid = <?php echo ($user["user_id"]); ?>;			$.post('<?php echo U(GROUP_NAME."/Index/runChatALL");?>',				{content:'',pid:pid},				//回调函数start				function(result){					var i=0;					var str = '';					for(var k in result){						str += "<li style='list-style-type:none;'><span style='color:"+result[k]['color']+";font-size:12px;'>"+result[k]['uname']+" "+result[k]['time']+						"</span><br /><span style='font-size:15px;'>"+result[k]['content']+"&nbsp;<span></li>";					}					$('ul').html(str);				},				//回调函数end				'json'			);			$('#middle').scrollTop(1000);		}	</script></head><body>	<div class="tatol">		<div class="head">			<p class="username">			<div style="float:left;margin-left:15px;"><img width="40px" height="40px;" src="__PUBLIC__/images/<?php echo ($user["logo"]); ?>" /></div>			<div style="height:40px;float:left;line-height:40px;margin-left:15px;margin-top:-5px;"><?php echo ($user["user_name"]); ?></div>			<div style="height:40px;float:left;line-height:40px;margin-left:15px;margin-top:15px;font-size:5px;color:gray;position:relative;left:-45px;"><?php echo ($user["style_name"]); ?></div>			</p>		</div>		<div class="middle" id="middle">			<ul>			</ul>		</div>		<div class="line"></div>		<div class="bottom">			<textarea id="content" name="content"></textarea>		</div>		<div class="foot">			<span id="sub"" onclick="showSubmit()"></span>		</div>	</div></body></html>
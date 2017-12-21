<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>登录</title>
</head>
<style>
	*{
		font-size: 32px;
	}
	td {
		height: 70px;
	}
	caption{
		height: 50px;
	}
	body{
		background-color: #F8F8F8;
		padding-top: 200px; 
	}
	.wrapper{
		margin: 0 auto;
		width: 600px;
		height: 300px;
		background-color: #B6D1DB;
		padding: 20px;
		border: 1px #63718B solid;
	}
	input[type="submit"]{
		width: 200px;
		background-color: #4A98C9;
	}
</style>
<body>
<div class="wrapper">

  <form action="<?php echo U('Home/Index/login_act');?>" method="post">
	  <table>
	  <caption>wiki后台</caption>
	    <tr>
	      <td>用户ID：</td>
	      <td>
	        <input type="text" name="user_id" required />
	      </td>
	    </tr>
	    
	    <tr>
	      <td>密码：</td>
	      <td>
	        <input type="password" name="password" required />
	      </td>
	    </tr>
	    
	    <tr>
	      <td>
	      </td>
	      <td>
	      	<input type="submit" value="登 录" />
	      </td>
	    </tr>
	  </table>
  </form>

</div>

</body>
</html>
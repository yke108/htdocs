<?php

Class RegAction extends Action {

	Public function index(){

		$this->display();
	}

	Public function runReg(){

		if(IS_POST){
			$user_name = $_POST['user_name'];
			$password = md5($_POST['password']);
			$repassword = md5($_POST['repassword']);
		}else{
			$this->error('非法操作');
		}

		if($password!=$repassword){
			$this->error('两次输入的密码不一致');
		}

		if($user = M('user')->WHERE(array('user_name'=>$user_name))->find()){
			$this->error('用户名已存在');
		}

		$data = array(
			'user_name' => $user_name,
			'password' => $password,
			'login_time' => time(),
			);
		$user_id = M('user')->add($data);
		session('user_id',$user_id);
		session('user_name',$user_name);
		$this->success('注册成功',U(GROUP_NAME.'/Index/index'));
		
	}

	Public function regAjax(){
		$user_name = $_POST['user_name'];
		$user = M('User')->where(array('user_name'=>$user_name))->find();
		$result = empty($user) ? '<img src="/Public/images/ok.png" />' : '<span style="color:red;">'.$username.'已经被注册</span>';
		die(json_encode($result));
	}
}
?>
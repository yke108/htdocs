<?php
// 本类由系统自动生成，仅供测试用途
class LoginAction extends Action {
    public function index(){
		$this->display();
    }

	public function verify(){
		import('ORG.Util.Image');
		Image::buildImageVerify();
	}
	
	public function login(){
		if(!IS_POST) _404('页面不存在','Admin/Login/index');
		if(I('code','','md5')!=session('verify')){
			$this->error('验证码错误');
		}
		$username=I('username');
		$password=I('password','','md5');
		$user = M('user')->where(array('username'=>$username))->find();
		if(!$user || $password!=$user['password']){
			$this->error(帐号或者密码不正确);
		}
		$data=array(
			'id'=>$user['id'],
			'logintime'=>time(),
			'loginip'=>get_client_ip()
		);
		M('user')->save($data);
		session('id',$user['id']);
		session('username',$user['username']);
		session('logintimd',$user['logintime']);
		session('loginip',$user['loginip']);
		
		$this->redirect('Admin/Index/index');
		
		
	}
}
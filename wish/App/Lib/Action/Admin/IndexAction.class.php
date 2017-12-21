<?php
// 本类由系统自动生成，仅供测试用途
class IndexAction extends CommonAction {
    public function index(){
		$this->display();
    }
	
	public function logout(){
		session_unset();
		session_destroy();
		$this->redirect('Admin/Login/index');
	}
}
<?php
// ������ϵͳ�Զ����ɣ�����������;
class CommonAction extends Action {
    public function _initialize(){
		if(!isset($_SESSION['id'])||!isset($_SESSION['username'])){
			$this->redirect('Admin/Login/index');
		}
    }
}
?>
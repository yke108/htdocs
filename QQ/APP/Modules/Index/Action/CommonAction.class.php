<?php
Class CommonAction extends Action {

	Public function _initialize(){
		if(!isset($_SESSION['user_id'])){
			$this->redirect(GROUP_NAME.'/Login/index');
		}
	}
}
?>
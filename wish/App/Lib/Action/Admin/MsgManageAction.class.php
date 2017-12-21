<?php
// 本类由系统自动生成，仅供测试用途
class MsgManageAction extends CommonAction {
    public function index(){
		import('ORG.Util.Page');
		$count = M('wish')->count();
		$page = new Page($count,10);
		$limit = $page->firstRow.','.$page->listRows;
		$wish = M('wish')->order('time DESC')->limit($limit)->select();
		$this->wish = $wish;
		$this->page = $page->show();
		$this->display();
    }
	
	 public function delete(){
		$id = I('id','','intval');
		if(M('wish')->delete($id)){				//M('wish')->where(array('id'=>$id))->delete()
			$this->success('删除成功',U('Admin/MsgManage/index'));
		}else{
			$this->error('删除失败',U('Admin/MsgManage/index'));
		}
    }
}
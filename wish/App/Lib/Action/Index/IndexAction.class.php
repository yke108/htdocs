<?php
// 本类由系统自动生成，仅供测试用途
class IndexAction extends Action {
    public function index(){
		$this->assign('wish',M('wish')->select())->display();
    }
	
	public function handle(){
		if(!IS_AJAX) _404('页面不存在',U('Index'));
		
		$data=array(
			'username'=>I('username'),
			'content'=>I('content'),
			'time'=>time()
		);
		if($id = M(wish)->data($data)->add()){
			$data['content']=replace_phiz($data['content']);
			$data['id']=$id;
			$data['time']=date('Y-m-d H:i:s',$data['time']);
			$data['status']=1;
			$this->ajaxReturn($data,'json');
		}else{
			$this->ajaxReturn(array(status=>0),'json');
		}
	}
}
<?php

Class IndexAction extends CommonAction {

	Public function index(){
		$search = isset($_POST['search']) ? $_POST['search'] : '';
		$this->assign('search',$search);
		$this->assign('friend_list',D('Relation')->friendList($_SESSION['user_id'],$search));
		$this->assign('user_info',D('User')->userInfo($_SESSION['user_id']));
		$body = $this->fetch('Lbi/user_list');
		$this->assign('body',$body);
		$this->display();
	}

	/*异步个性签名*/
	Public function style_name_ajax(){
		$styleName = isset($_POST['styleName']) ? htmlspecialchars($_POST['styleName']) : '';
		$User = M('User');
		$result = $User->where(array('user_id'=>array('eq',$_SESSION['user_id'])))->save(array('style_name'=>$styleName));
		die(json_encode($styleName));
	}

    Public function runChatALL(){
        $pid = $_POST['pid'];
        $user_id = $_SESSION['user_id'];
        if($_POST['content']){
            $content = htmlspecialchars($_POST['content']);
            $data = array(
                'user_id' => $user_id,
                'pid' => $pid,
                'content' => $content,
                'time' => time(),
            );
            M('content')->add($data);
        }
        $result = M('content')->WHERE('(user_id='.$user_id.' and pid='.$pid.') or (user_id='.$pid.' and pid='.$user_id.')')->order('time')->select();

        foreach($result as $k => $v){
            $user_id = $v['user_id'];
            $uname_arr = M('user')->WHERE('user_id='.$user_id)->field('user_name')->find();
            $result[$k]['uname'] = $uname_arr['user_name'];
            $result[$k]['time'] = date('Y-m-d H:i:s',$v['time']);
            $result[$k]['color'] = ($v['user_id'] == $_SESSION['user_id'])?'green':'blue';
        }
        echo json_encode($result);
    }

	Public function runChat(){
		$pid = $_POST['pid'];
		$user_id = $_SESSION['user_id'];
		if($_POST['content']){
			$content = htmlspecialchars($_POST['content']);
			$data = array(
				'user_id' => $user_id,
				'pid' => $pid,
				'content' => $content,
				'time' => time(),
				);
			M('content')->add($data);
		}
		$result = M('content')->WHERE(array('user_id' => $user_id))->order('time desc')->find();
        $uname_arr = M('user')->WHERE('user_id='.$user_id)->field('user_name')->find();
        $result['uname'] = $uname_arr['user_name'];
        $result['time'] = date('Y-m-d H:i:s',$result['time']);
		echo json_encode($result,JSON_UNESCAPED_UNICODE);
	}

	Public function addFriend(){
		//个人信息
		$this->assign('user_info',D('User')->userInfo($_SESSION['user_id']));
		$searchFriend = isset($_POST['searchFriend']) ? htmlspecialchars($_POST['searchFriend']) : '';
		$this->assign('search1',$searchFriend);
		if(!empty($searchFriend)){
			$this->assign('search_friend',D('User')->search_friend($searchFriend,$_SESSION['user_id']));
			$body = $this->fetch('Lbi/search_friend');
		}else{
			/*可能认识的人*/
			$this->assign('users',D('Relation')->mayKnow($_SESSION['user_id']));
			/*推荐添加好友*/
			$this->assign('rand_friends',D('Relation')->randFriend($_SESSION['user_id']));
			$body = $this->fetch('Lbi/addFriend');
		}
		$this->assign('body',$body);
		$this->display('index');
	}

	Public function addFriendAjax(){
		$friend_id  = isset($_POST['friend_id']) ? $_POST['friend_id'] : '' ;
		$ps  = isset($_POST['ps']) ? htmlspecialchars($_POST['ps']) : '' ;
		$Relation = M('Relation');
		if(M('Relation')->where('user_id='.$_SESSION['user_id'].' AND friend_id='.$friend_id.' AND friend_id<>'.$_SESSION['user_id'].' AND status=0')->find()){
			M('Relation')->where('user_id='.$_SESSION['user_id'].' AND friend_id='.$friend_id.' AND friend_id<>'.$_SESSION['user_id'].' AND status=0')->save(array('ps'=>$ps));
			die(json_encode(true));
		}
		if(M('Relation')->where('user_id='.$friend_id.' AND friend_id='.$_SESSION['user_id'].' AND status=0')->find()){
			M('Relation')->where('user_id='.$friend_id.' AND friend_id='.$_SESSION['user_id'])->save(array('status'=>1));
			M('Relation')->data(array('user_id'=>$_SESSION['user_id'],'friend_id'=>$friend_id,'status'=>1,'group_name'=>'我的好友'))->add();
		}
		$map = array(
			'friend_id' => $friend_id,
			'user_id'   => $_SESSION['user_id'],
			'status'    => 0,
			'group_name'=>'我的好友',
			'ps'		=> $ps);
		M('relation')->data($map)->add();
		die(json_encode(true));
	}

	Public function message(){
		//个人信息
		$this->assign('user_info',D('User')->userInfo($_SESSION['user_id']));
		$this->assign('message_list',D('Relation')->messageList($_SESSION['user_id']));
		$body = $this->fetch('Lbi/message');
		$this->assign('body',$body);
		$this->display('index');	
	}

	Public function messageAgree(){
		$friend_id = isset($_POST['friend_id']) ? (int)$_POST['friend_id'] : 0;
		M('Relation')->where('user_id='.$friend_id.' and friend_id='.$_SESSION['user_id'])->save(array('status'=>1));
		$result = M('Relation')->data(array('user_id'=>$_SESSION['user_id'],'friend_id'=>$friend_id,'status'=>1,'group_name'=>'我的好友'))->add();
		$user_info = D('User')->userInfo($_SESSION['user_id']);
		die(json_encode($user_info['message_num']));

	}

	Public function messageRefuse(){
		$friend_id = isset($_POST['friend_id']) ? (int)$_POST['friend_id'] : 0;
		M('Relation')->where('user_id='.$friend_id.' and friend_id='.$_SESSION['user_id'])->delete();
		$user_info = D('User')->userInfo($_SESSION['user_id']);
		die(json_encode($user_info['message_num']));
	}

	Public function touXiang(){
		$this->display();
	}

	/*会话最近聊天*/
	Public function dialog(){
		$this->assign('user_info',D('User')->userInfo($_SESSION['user_id']));
		$dialog  = D('Content')->dialog($_SESSION['user_id']);
		$this->assign('dialog',$dialog);
		$body = $this->fetch('Lbi/dialog');
		$this->assign('body',$body);
		$this->display('index');
	}

	/*修改备注*/
	Public function remarkAjax(){
		$remark = isset($_POST['remark']) ? htmlspecialchars($_POST['remark']) : '';
		$friend_id = isset($_POST['friend_id']) ? $_POST['friend_id'] : '';
		$data = array('remark'=>$remark);
		$result = M('Relation')->where(array('friend_id'=>$friend_id,'user_id'=>$_SESSION['user_id']))->save($data);
		$user_name = M('User')->where('user_id='.$friend_id)->field('user_name')->find();
		die(json_encode($user_name['user_name']));
	}

	Public function tou_done(){
		if($_FILES['fileField']['error']!=0){
			$this->error('上传文件有误');
		}
		switch($_FILES['fileField']['type']){
		    case "image/jpeg":
			    $hz=".jpg";break;
			case "image/pjpeg":
			    $hz=".jpg";break;
			case "image/gif":
			    $hz=".gif";break;
			case "image/x-png":
			    $hz=".png";break;
			case "image/png":
			    $hz=".png";break;
			default:
			    $hz=false;
	    }
	    if(!$hz){
	    	$this->error('上传的图片格式不正确');
	    }else{
			import('ORG.Util.Image');
			$uploadedfile = $_FILES['fileField']['tmp_name'];
			$filename = 'upload/'.time().rand(100,999).$hz;

			move_uploaded_file($_FILES['fileField']['tmp_name'],'./Public/images/'.$filename);
			Image::thumb2('./Public/images/'.$filename,'./Public/images/'.$filename,'jpg',60,60);
	    	M('User')->where('user_id='.$_SESSION['user_id'])->save(array('logo'=>$filename));
	    	$this->redirect(GROUP_NAME.'/Index/index');
	    }
	}

	Public function chat(){
		$user_id = $_GET['user_id'];
		$user = M('user')->WHERE(array('user_id'=>$user_id))->field('user_id,user_name,logo,style_name')->find();
		$user['logo'] = !empty($user['logo']) ? $user['logo'] : 'QQ.png' ;
		$this->user=$user;
		$this->current_user = $_SESSION['user_id'];
		$this->display();
	}
}
?>
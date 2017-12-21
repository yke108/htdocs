<?php
Class RelationModel extends Model{
	
	/*可能认识的人*/
	Public function mayKnow($user_id){
		$Relation = M('Relation r');
		$User = M('User u');
		$friend_id = $Relation->where('r.status=1 and r.user_id='.$user_id)->field('r.friend_id')->select(false);
		$Relation->join($User->getTableName().' on r.friend_id=u.user_id');
		$arr=$Relation->where('r.user_id in ' . $friend_id . ' and r.status=1 and r.friend_id not in '.$friend_id.' and r.friend_id<>'.$user_id)->field('distinct(u.user_id),u.style_name,u.user_name,u.logo')->limit(5)->select();
		foreach($arr as $k => $v){
			$arr[$k]['logo'] = !empty($v['logo']) ? $v['logo'] : 'QQ.png' ;
		}
		return $arr;
	}

	/*随机推荐好友*/
	Public function randFriend($user_id){
		$Relation = M('Relation r');
		$User = M('User u');
		$friend_id = $Relation->where('user_id='.$user_id.' and status=1')->field('friend_id')->select(false);
		$arr=$User->where('user_id<>'.$user_id.' and user_id not in '.$friend_id)->field('user_id,style_name,user_name,logo')->order('rand()')->limit(5)->select();
		foreach($arr as $k => $v){
			$arr[$k]['logo'] = !empty($v['logo']) ? $v['logo'] : 'QQ.png' ;
		}
		return $arr;
	}

	/*好友列表*/
	Public function friendList($user_id,$search){
		$User = M('User u');
		$Relation = M('Relation r');
		$User->join($Relation->getTableName()." on u.user_id=r.friend_id");
		$friend_list = $User->where("r.user_id=".$user_id." AND status=1 AND (u.user_name like '%".$search."%' OR r.remark like '%".$search."%')")->field('u.user_name,u.logo,u.style_name,r.friend_id,r.remark,r.group_name')->select();
		foreach($friend_list as $k => $v){
			$friend_list[$k]['logo'] = !empty($v['logo']) ? $v['logo'] : 'QQ.png' ;
		}
		return $friend_list;
	}

	/*请求添加我的好友列表*/
	Public function messageList($user_id){
		$Relation = M('Relation r');
		$User = M('User u');
		$Relation->join($User->getTableName()." on r.user_id=u.user_id");
		$message_list = $Relation->where('r.status=0 and r.friend_id='.$user_id)->field('u.user_id,u.style_name,u.user_name,u.logo,r.ps')->select();
		foreach($message_list as $k => $v){
			$message_list[$k]['logo'] = !empty($v['logo']) ? $v['logo'] : 'QQ.png' ;
		}
		return $message_list;
	}

}
?>
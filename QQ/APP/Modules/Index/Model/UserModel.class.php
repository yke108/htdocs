<?php
Class UserModel extends Model{

	//我的个人信息
	Public function userInfo($user_id){
		$user_info = M('User')->where('user_id='.$user_id)->field('user_name,style_name,logo')->find();
		$user_info['logo'] = !empty($user_info['logo']) ? $user_info['logo'] : 'QQ_tou.jpg' ;
		$message_num_arr = M('Relation')->where('friend_id='.$_SESSION['user_id'].' and status=0')->field('count(*) num')->find();
		$user_info['message_num'] = $message_num_arr['num'];
		return $user_info;
	}

	//搜索好友添加
	Public function search_friend($searchFriend,$user_id){
		$friend_id = M('Relation')->where('user_id='.$user_id." and status=1")->field('friend_id')->select(false);
		$arr = M('User')->where("user_name like '%".$searchFriend."%' and user_id<>".$_SESSION['user_id']." and user_id not in ".$friend_id)->field('user_id,style_name,user_name,logo')->select();
		foreach($arr as $k => $v){
			$arr[$k]['logo'] = !empty($v['logo']) ? $v['logo'] : 'QQ.png' ;
		}
		return $arr;
	}
}

?>
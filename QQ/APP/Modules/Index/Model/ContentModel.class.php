<?php
Class ContentModel extends Model{

	/*最近聊天的好友*/
	Public function dialog($user_id){
		$sql = M('Content')->field("pid,MAX(time) AS t")->group("pid")->where('user_id='.$user_id)->select(false);
		$arr1 = M('Content q1')->field("q1.id,q1.user_id,q1.pid,q1.content,q1.time")->join("inner join ".$sql." AS q2 ON q1.time=q2.t AND q1.pid=q2.pid")->select();

		$sq2 = M('Content')->field("user_id,MAX(time) AS t")->group("user_id")->where('pid='.$user_id)->select(false);
		$arr2 = M('Content q1')->field("q1.id,q1.user_id,q1.pid,q1.content,q1.time")->join("inner join ".$sq2." AS q2 ON q1.time=q2.t AND q1.user_id=q2.user_id")->select();

		$arr3 = array();
		foreach($arr1 as $v)$arr3[] = $v;
		foreach($arr2 as $v)$arr3[] = $v;
		$arr4 = array();
		foreach($arr3 as $val){
			$error = true;
			foreach($arr3 as $v){
				if($val['user_id'] == $v['pid'] && $val['pid'] == $v['user_id']){
					$error = false;
					if($val['time'] > $v['time']){
						$arr4[] = $val;
						break;
					}
				}
			}
			if($error){
				$arr4[] = $val;
			}
		}
		for($i=0;$i<count($arr4);$i++){
			for($j=$i+1;$j<count($arr4);$j++){
				if($arr4[$i]['time']<$arr4[$j]['time']){
					$temp = $arr4[$i];
					$arr4[$i] = $arr4[$j];
					$arr4[$j] = $temp;
				}
			}
		}
		foreach($arr4 as $k => $v){
			if($v['user_id'] == $user_id){
				$arr4[$k]['friend_id'] = $v['pid'];
			}else{
				$arr4[$k]['friend_id'] = $v['user_id'];
			}
			$friend = M('User')->where('user_id='.$arr4[$k]['friend_id'])->field('user_name,logo,style_name')->find();
			$arr4[$k]['friend_name'] = $friend['user_name'];
			$arr4[$k]['logo'] = !empty($friend['logo']) ? $friend['logo'] : 'QQ.png' ;
			$remark = M('Relation')->where('user_id='.$user_id.' AND friend_id='.$arr4[$k]['friend_id'])->field('remark')->find();
			$arr4[$k]['remark'] = $remark['remark'];
			$user_name = M('User')->where('user_id='.$v['user_id'])->field('user_name')->find();
			$arr4[$k]['user_name'] = $user_name['user_name'];
			$date = date('Y-m-d',$v['time']);
			$today = date('Y-m-d');
			$arr4[$k]['time'] = (strtotime($today)-strtotime($date))>60*60*24 ? date('m-d',$v['time']) : ((strtotime($today)-strtotime($date))==60*60*24 ? '昨天' : date('H:i',$v['time']));
		}

		return $arr4;
	}
}
?>
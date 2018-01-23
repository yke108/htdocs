<?php
namespace Home\Model;
use Think\Model;
class WechatModel
{
    CONST TIPS = "1、益智【2048】\n2、棋牌【五子棋】\n3、休闲【贪吃蛇】\n4、消除【碰碰熊】\n5、刺激【飞机战争】\n6、查询个人信息\n7、登录http://yke108.cn/QQ";

    // 接收信息
    public function responseMsg()
    {
        $postStr = $GLOBALS["HTTP_RAW_POST_DATA"];
        if (!empty($postStr)){
                
            $postObj = simplexml_load_string($postStr, 'SimpleXMLElement', LIBXML_NOCDATA);
            $RX_TYPE = trim($postObj->MsgType);

            switch($RX_TYPE)
            {
                case "text":
                    $resultStr = $this->handleText($postObj);
                    break;
                case "event":
                    $resultStr = $this->handleEvent($postObj);
                    break;
                default:
                    $resultStr = "Unknow msg type: ".$RX_TYPE;
                    break;
            }
            echo $resultStr;
        }
    }

    public function handleText($postObj)
    {
        $keyword = trim($postObj->Content);           
        if(!empty( $keyword ))
        {
            $open_id = (string)$postObj->FromUserName;
            $user_info = M('User_info')->where("open_id='{$open_id}'")->find();
            if (empty($user_info)) {
                $user_info = [
                    'open_id' => $open_id,
                    'status'  => 1,
                    'add_time' => time(),
                    'update_time' => time(),
                ];
                $user_id = M('User_info')->add($user_info);
                $user_info['user_id'] = $user_id;
            }
			switch ($keyword)
			{
				case 1:
                    $articles = array
                    (
                        array
                        (
                            'title'       => "2048",
                            'picurl'      => 'http://yke108.cn/2048/img_cover.png',
                            'url'         => 'http://yke108.cn/2048/index.html',
                            'description' => '一款有意思的算术小游戏，虽然是简单的加法运算，但是要将小数字累加到2048也不是一件容易的事，要注意的是，只有相同的数字才可以累加。想试试吗？',
                        ),
                    );
                    $arr['act_code'] = "2048";
                    $arr['value'] = 5;
                    $arr['type'] = 'news';
					break;
				case 2:
					$articles = array
                    (
                        array
                        (
                            'title'       => "五子棋",
                            'picurl'      => 'http://yke108.cn/fiveGame/img_cover.jpg',
                            'url'         => 'http://yke108.cn/fiveGame/index.html',
                            'description' => '欢乐五子棋是一款非常有趣的五子棋游戏，界面美观，电脑智商高。支持人机对战、机人对战、双人对战以及双人联机对战模式，还可以悔棋、边战边聊。在游戏中还记录棋步及本局游戏所花时间等同时还可以设置电脑的等级，电脑的智能化等级已有一定标准，玩家仍需要努力才能胜利。',
                        ),
                    );
                    $arr['act_code'] = "五子棋";
                    $arr['value'] = 5;
                    $arr['type'] = 'news';
					break;
				case 3:
					$articles = array
                    (
                        array
                        (
                            'title'       => "贪吃蛇",
                            'picurl'      => 'http://yke108.cn/snake/img_cover.png',
                            'url'         => 'http://yke108.cn/snake/index.html',
                            'description' => '非常非常经典一款小游戏。还记得诺基亚手机上的贪吃蛇吗？快快来怀恋吧！！经典、简单又有趣哦！大家快点一起来玩吧！',
                        ),
                    );
                    $arr['act_code'] = "贪吃蛇";
                    $arr['value'] = 5;
                    $arr['type'] = 'news';
					break;
				case 4:
					$articles = array
                    (
                        array
                        (
                            'title'       => "碰碰熊",
                            'picurl'      => 'http://yke108.cn/cocos2d-html5/Mushroom/1.png',
                            'url'         => 'http://yke108.cn/cocos2d-html5/Mushroom/index.html',
                            'description' => '这是一款休闲类小游戏，玩法比较简单，只要让旋转熊落地并且碰完所有的水果便能轻松过关。游戏内设置了无尽关卡，每一关的水果都有所不同，并且随着关数越高需要被碰次数也得越多，而且熊的速度也随得变快。核心玩法是玩家可以在提示的规定时间内完成五连击后，熊便能畅通无阻，并且所有关卡的水果都能一次碰中便消失，可以说是百玩不厌的游戏。',
                        ),
                    );
                    $arr['act_code'] = "碰碰熊";
                    $arr['value'] = 5;
                    $arr['type'] = 'news';
					break;
                case 5:
                    $articles = array
                    (
                        array
                        (
                            'title'       => "飞机战争",
                            'picurl'      => 'http://yke108.cn/cocos2d-html5/Airwar/res/zhujue.png',
                            'url'         => 'http://yke108.cn/cocos2d-html5/Airwar/index.html',
                            'description' => '这是一款休闲类小游戏，玩法比较简单，只要让旋转熊落地并且碰完所有的水果便能轻松过关。游戏内设置了无尽关卡，每一关的水果都有所不同，并且随着关数越高需要被碰次数也得越多，而且熊的速度也随得变快。核心玩法是玩家可以在提示的规定时间内完成五连击后，熊便能畅通无阻，并且所有关卡的水果都能一次碰中便消失，可以说是百玩不厌的游戏。',
                        ),
                    );
                    $arr['act_code'] = "飞机战争";
                    $arr['value'] = 5;
                    $arr['type'] = 'news';
                    break;
                case 6:
                    $action_list = M('Action_log')->where("user_id={$user_info['user_id']}")->select();
                    $actionStr = '';
                    $i = 1;
                    foreach($action_list as $v)
                    {
                        if($v['value'] < 1) continue;
                        $act_code = substr($v['act_code'], 0, 24);
                        $actionStr .= "\n" . $i++ . "、[+{$v['value']}]{$act_code}";
                    }
                    $arr['act_code'] = "查询个人信息";
                    $arr['value'] = 0;
                    $arr['type'] = 'text';
                    $arr['content'] = "尊敬的客户您好，你的个人信息如下\n-------------\n关注时间：" . date('Y-m-d H:i', $user_info['add_time']) . "\n-------------\n帐户积分：{$user_info['credit']}\n-------------\n我的行为日志：{$actionStr}\n-------------\n以上数据仅供参考。";
                    break;
				default :
                    $arr['act_code'] = $keyword;
                    $arr['value'] = 1;
                    $arr['type'] = 'text';
                    $arr['content'] = self::TIPS;
			}
            $add_data = array 
            (
                'user_id'  => $user_info['user_id'],
                'act_code' => $arr['act_code'],
                'value'    => $arr['value'],
                'add_time' => time(),
            );
            M('Action_log')->add($add_data);
            M('User_info')->where("user_id={$user_info['user_id']}")->save(array('credit' => $user_info['credit'] + $arr['value']));
            if($arr['type'] == "news")
                echo $this->responseNews($postObj, $articles);
            else
                echo $this->responseText($postObj, $arr['content']);
        }
    }

    public function handleEvent($object)
    {
        $contentStr = "";
        switch ($object->Event)
        {
            // 用户关注时
            case "subscribe":
                $open_id = (string)$object->FromUserName;
                // 判断用户是否曾经关注过
                $user_info = M('User_info')->where("open_id = '{$open_id}'")->find();
                if(empty($user_info)) {
                    $add_data = array(
                        'open_id' => $open_id,
                        'status'  => 1,
                        'add_time' => time(),
                        'update_time' => time(),
                        );
                    $ret = M('User_info')->add($add_data);
                    $contentStr = "你好，欢迎关注【别当真】玩游戏！\n" . self::TIPS;
                } else {
                    M('User_info')->where("open_id = '{$open_id}'")->save(array("status" => 1, "update_time" => time()));
                    $contentStr = "你好，欢迎回来！\n" . self::TIPS;
                }

                break;

            // 用户取消关注时
            case "unsubscribe":
                $open_id = (string)$object->FromUserName;
                M('User_info')->where("open_id = '{$open_id}'")->save(array("status" => 0, "update_time" => time()));
                break;

            default :
                $contentStr = "Unknown Event: ".$object->Event;
                break;
        }
        $resultStr = $this->responseText($object, $contentStr);
        return $resultStr;
    }
    
    public function responseText($object, $content, $flag=0)
    {
        $textTpl = "<xml>
                    <ToUserName><![CDATA[%s]]></ToUserName>
                    <FromUserName><![CDATA[%s]]></FromUserName>
                    <CreateTime>%s</CreateTime>
                    <MsgType><![CDATA[text]]></MsgType>
                    <Content><![CDATA[%s]]></Content>
                    <FuncFlag>%d</FuncFlag>
                    </xml>";
        $resultStr = sprintf($textTpl, $object->FromUserName, $object->ToUserName, time(), $content, $flag);
        return $resultStr;
    }

    public function responseNews($object, $articles)
    {
        $NewsTpl =  "<xml>
                    <ToUserName><![CDATA[".$object->FromUserName."]]></ToUserName>
                    <FromUserName><![CDATA[".$object->ToUserName."]]></FromUserName>
                    <CreateTime>".time()."</CreateTime>
                    <MsgType><![CDATA[news]]></MsgType>
                    <ArticleCount>".count($articles)."</ArticleCount>
                    <Articles>";

        foreach($articles as $v)
        {
            $NewsTpl .= "<item>
                        <Title><![CDATA[".$v["title"]."]]></Title> 
                        <Description><![CDATA[".$v["description"]."]]></Description>
                        <PicUrl><![CDATA[".$v["picurl"]."]]></PicUrl>
                        <Url><![CDATA[".$v["url"]."]]></Url>
                        </item>";
        }
        $NewsTpl .= "</Articles>
                    </xml>";

        return $NewsTpl;
    }

    public function valid()
    {
        $echoStr = $_GET["echostr"];

        //valid signature , option
        if($this->checkSignature()){
            echo $echoStr;
            exit;
        }
    }

    private function checkSignature()
    {
        $signature = $_GET["signature"];
        $timestamp = $_GET["timestamp"];
        $nonce = $_GET["nonce"];    
                
        $token = TOKEN;
        $tmpArr = array($token, $timestamp, $nonce);
        sort($tmpArr);
        $tmpStr = implode( $tmpArr );
        $tmpStr = sha1( $tmpStr );
        
        if( $tmpStr == $signature ){
            return true;
        }else{
            return false;
        }
    }
}

?>
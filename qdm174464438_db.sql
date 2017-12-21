/*
Navicat MySQL Data Transfer

Source Server         : 47.94.225.252
Source Server Version : 50556
Source Host           : 47.94.225.252:3306
Source Database       : qdm174464438_db

Target Server Type    : MYSQL
Target Server Version : 50556
File Encoding         : 65001

Date: 2017-12-21 09:04:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for hd_user
-- ----------------------------
DROP TABLE IF EXISTS `hd_user`;
CREATE TABLE `hd_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` char(20) NOT NULL DEFAULT '',
  `password` char(32) NOT NULL DEFAULT '',
  `logintime` int(10) unsigned NOT NULL,
  `loginip` char(30) NOT NULL,
  `lock` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hd_user
-- ----------------------------
INSERT INTO `hd_user` VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3', '1458100947', '116.6.198.151', '0');

-- ----------------------------
-- Table structure for hd_wish
-- ----------------------------
DROP TABLE IF EXISTS `hd_wish`;
CREATE TABLE `hd_wish` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL DEFAULT '',
  `content` varchar(255) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hd_wish
-- ----------------------------
INSERT INTO `hd_wish` VALUES ('1', '柯琼远', '柯琼远[酷]', '1425622099');
INSERT INTO `hd_wish` VALUES ('2', '柯林立', '再来一条[抓狂]', '1425622132');
INSERT INTO `hd_wish` VALUES ('3', '柯碧云', '我的愿望是做一名PHP程序员，可以开发自己的网站！[挤眼]', '1425623153');
INSERT INTO `hd_wish` VALUES ('4', '陈志晓', '做JAVA好爽，加班更爽[酷]', '1425623182');
INSERT INTO `hd_wish` VALUES ('5', '陈竹礼', '机械就是我的菜，板手我最爱', '1425623218');
INSERT INTO `hd_wish` VALUES ('6', '郑晓丹', '哈哈，水上漂，天上游，来不拒[嘻嘻]', '1425623270');
INSERT INTO `hd_wish` VALUES ('7', '陈秋月', '跟竹礼浪漫幸福过一辈子[害羞]', '1425623304');
INSERT INTO `hd_wish` VALUES ('8', '二叔佬', '拼车啦，收你八字[钱]', '1425623333');
INSERT INTO `hd_wish` VALUES ('9', '曹华飞', '我要加班赚钱矛回来过年[抓狂]', '1425624013');
INSERT INTO `hd_wish` VALUES ('10', '基哥', '我是百事通[抓狂][抓狂][抓狂]', '1425659316');
INSERT INTO `hd_wish` VALUES ('11', '黄凤珊', '做一名优秀的老师，教育祖国的花朵', '1425736281');
INSERT INTO `hd_wish` VALUES ('40', '陈茂松', '[抓狂]', '1425755255');
INSERT INTO `hd_wish` VALUES ('44', '万网', '多多来买我域名和服务器[钱][钱][钱]', '1426751691');
INSERT INTO `hd_wish` VALUES ('35', '二叔佬', '我们去开车，[嘻嘻][花心][钱]', '1425750778');
INSERT INTO `hd_wish` VALUES ('48', '柯林立', '为人师表，我最在行[嘻嘻][嘻嘻]', '1427042216');
INSERT INTO `hd_wish` VALUES ('47', 'JulyChen', 'Everyone have a happy life![害羞][抱抱]', '1426993308');
INSERT INTO `hd_wish` VALUES ('50', '黎永伦', '哇！很吊的网站', '1427341771');
INSERT INTO `hd_wish` VALUES ('52', 'kelinley', '恭喜发财！[钱]', '1427713035');
INSERT INTO `hd_wish` VALUES ('53', '多多', '我希望，在結婚前完成心中的旅遊計劃；我希望從現在開始三年內，實現結婚、生慈姑ding、買房的夢想！！我知道一定會如願實現的[害羞][害羞]', '1427713395');
INSERT INTO `hd_wish` VALUES ('55', '桃子同学V', '每天早上醒来都被自己美哭！！[太开心][太开心]', '1427871047');
INSERT INTO `hd_wish` VALUES ('56', '柯琼远', '[太开心]直角梯形', '1427918423');
INSERT INTO `hd_wish` VALUES ('67', '綺樓廰風雨', '棒棒哒！[花心]愿越来越美好！[嘻嘻]', '1429514672');
INSERT INTO `hd_wish` VALUES ('58', '林伟涛', '网站叼叼的[嘻嘻][嘻嘻]', '1427982513');
INSERT INTO `hd_wish` VALUES ('59', 'Mr.ShaoX', '许愿：出手必涨停！[太开心][太开心]', '1428049029');
INSERT INTO `hd_wish` VALUES ('60', '柯梓晴', '我和爸爸，妈妈在一起', '1428119841');
INSERT INTO `hd_wish` VALUES ('61', '玫子', '新婚快乐，幸福甜蜜！物理班所有人都要幸福？', '1428241090');
INSERT INTO `hd_wish` VALUES ('62', '何智超', '哎哟 不错哦[酷]', '1428460314');
INSERT INTO `hd_wish` VALUES ('63', '你哥哥', '琼远坏坏', '1428460612');
INSERT INTO `hd_wish` VALUES ('64', 'chorusseo', '琼远最好啦~~~\n琼远最帅拉~~~\n[酷]\n琼远哥和嫂子要幸福哈~~~\n大家都HAPPY啦~~~[嘻嘻]', '1428460909');
INSERT INTO `hd_wish` VALUES ('65', 'Trancs', 'ipartment什么时候能组建呢？陈一万，还是柯IT，给点提示来！', '1428858697');
INSERT INTO `hd_wish` VALUES ('66', '关关', '我希望，我的世界永远春暖花开~~~~~~', '1429338027');
INSERT INTO `hd_wish` VALUES ('68', 'asdf', 'asdf[花心]', '1439279069');
INSERT INTO `hd_wish` VALUES ('69', 'mr.lin', '[挤眼]', '1439783740');
INSERT INTO `hd_wish` VALUES ('70', '放水电费', '水电费水电费', '1439975678');
INSERT INTO `hd_wish` VALUES ('72', '晴晴', '最大的幸福就是爸爸妈妈可以陪伴我成长[太开心]', '1444703886');
INSERT INTO `hd_wish` VALUES ('73', '张福海', '啊远好厉害~[嘻嘻]', '1455608467');
INSERT INTO `hd_wish` VALUES ('74', 'wish', '[太开心][嘻嘻][害羞]', '1477989197');
INSERT INTO `hd_wish` VALUES ('75', '柯琼远', '[抓狂]', '1484209620');

-- ----------------------------
-- Table structure for qq_content
-- ----------------------------
DROP TABLE IF EXISTS `qq_content`;
CREATE TABLE `qq_content` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `pid` int(10) NOT NULL,
  `content` varchar(100) NOT NULL,
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=251 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qq_content
-- ----------------------------
INSERT INTO `qq_content` VALUES ('1', '1', '7', '在吗？', '1431707603');
INSERT INTO `qq_content` VALUES ('2', '1', '7', '急，在不在', '1431707695');
INSERT INTO `qq_content` VALUES ('10', '1', '7', '真爽！', '1431708688');
INSERT INTO `qq_content` VALUES ('11', '1', '7', '真爽！', '1431708766');
INSERT INTO `qq_content` VALUES ('12', '7', '1', 'aa，你好，在吗，我找你有事情', '1431708809');
INSERT INTO `qq_content` VALUES ('13', '7', '1', '在不在啊，', '1431708821');
INSERT INTO `qq_content` VALUES ('14', '7', '7', '真爽！', '1431708977');
INSERT INTO `qq_content` VALUES ('15', '7', '7', '好吧', '1431709005');
INSERT INTO `qq_content` VALUES ('18', '7', '1', 'thinkphp 查询数据库OR写怎么样', '1431709347');
INSERT INTO `qq_content` VALUES ('19', '2', '3', '在吗', '1431709409');
INSERT INTO `qq_content` VALUES ('20', '7', '2', '魂牵梦萦', '1431709438');
INSERT INTO `qq_content` VALUES ('21', '2', '3', '魂牵梦萦', '1431709448');
INSERT INTO `qq_content` VALUES ('23', '2', '3', 'fdsa', '1431709587');
INSERT INTO `qq_content` VALUES ('25', '3', '2', 'fdsafdsafdsafdsa', '1431710127');
INSERT INTO `qq_content` VALUES ('33', '3', '2', '魂牵梦萦', '1431710895');
INSERT INTO `qq_content` VALUES ('47', '3', '6', '你好', '1431711868');
INSERT INTO `qq_content` VALUES ('54', '4', '5', '妞，在不在呀', '1431712222');
INSERT INTO `qq_content` VALUES ('55', '4', '5', '我找你有事', '1431712515');
INSERT INTO `qq_content` VALUES ('56', '4', '5', '快点回复我啊', '1431712524');
INSERT INTO `qq_content` VALUES ('57', '5', '4', '在的', '1431712586');
INSERT INTO `qq_content` VALUES ('58', '5', '4', '什么事情啊', '1431712592');
INSERT INTO `qq_content` VALUES ('59', '4', '5', '没事了', '1431712602');
INSERT INTO `qq_content` VALUES ('60', '5', '4', '好的', '1431713079');
INSERT INTO `qq_content` VALUES ('61', '4', '5', '睡觉吧', '1431713228');
INSERT INTO `qq_content` VALUES ('62', '5', '4', 'OK', '1431713303');
INSERT INTO `qq_content` VALUES ('63', '5', '4', '拜拜，再聊', '1431713326');
INSERT INTO `qq_content` VALUES ('64', '5', '4', '好的', '1431715140');
INSERT INTO `qq_content` VALUES ('65', '5', '4', '在做什么呢', '1431715164');
INSERT INTO `qq_content` VALUES ('66', '5', '4', '好吧', '1431715183');
INSERT INTO `qq_content` VALUES ('67', '4', '5', '拜拜', '1431715200');
INSERT INTO `qq_content` VALUES ('68', '1', '6', 'Girl', '1431719041');
INSERT INTO `qq_content` VALUES ('69', '1', '6', '睡觉没有呢', '1431719049');
INSERT INTO `qq_content` VALUES ('70', '1', '6', 'DOTA', '1431719055');
INSERT INTO `qq_content` VALUES ('71', '1', '6', '好吧，拜拜', '1431719065');
INSERT INTO `qq_content` VALUES ('72', '1', '6', '还在吗', '1431719645');
INSERT INTO `qq_content` VALUES ('73', '1', '6', '在的', '1431719652');
INSERT INTO `qq_content` VALUES ('74', '1', '6', '现在可以用ENTER键来发送信息了，很不错', '1431719683');
INSERT INTO `qq_content` VALUES ('75', '1', '6', '\n你也来试试看咯', '1431719695');
INSERT INTO `qq_content` VALUES ('76', '1', '6', '好的', '1431720026');
INSERT INTO `qq_content` VALUES ('77', '1', '2', ' ', '1431720245');
INSERT INTO `qq_content` VALUES ('78', '1', '2', '\n0', '1431720248');
INSERT INTO `qq_content` VALUES ('79', '1', '6', '好的', '1431720588');
INSERT INTO `qq_content` VALUES ('80', '1', '6', '好', '1431720594');
INSERT INTO `qq_content` VALUES ('81', '1', '6', '你好', '1431720631');
INSERT INTO `qq_content` VALUES ('82', '1', '6', '我来告诉你吧', '1431720668');
INSERT INTO `qq_content` VALUES ('83', '1', '6', '好', '1431720683');
INSERT INTO `qq_content` VALUES ('84', '1', '6', 'YY', '1431720706');
INSERT INTO `qq_content` VALUES ('85', '1', '6', '\n', '1431720756');
INSERT INTO `qq_content` VALUES ('86', '1', '6', '在吗', '1431720769');
INSERT INTO `qq_content` VALUES ('87', '1', '6', '不在', '1431721376');
INSERT INTO `qq_content` VALUES ('88', '1', '7', 'fdsa ', '1431793598');
INSERT INTO `qq_content` VALUES ('89', '1', '7', '\nfdsa', '1431793613');
INSERT INTO `qq_content` VALUES ('90', '1', '7', '\n', '1431793624');
INSERT INTO `qq_content` VALUES ('91', '1', '7', '\n', '1431793624');
INSERT INTO `qq_content` VALUES ('92', '1', '3', '\nfdsa', '1431794838');
INSERT INTO `qq_content` VALUES ('93', '1', '3', '\n', '1431794868');
INSERT INTO `qq_content` VALUES ('94', '1', '3', '\n', '1431794869');
INSERT INTO `qq_content` VALUES ('95', '1', '3', '\n', '1431794870');
INSERT INTO `qq_content` VALUES ('96', '1', '3', 'fdsa\n', '1431794873');
INSERT INTO `qq_content` VALUES ('97', '1', '3', 'jh\n', '1431794876');
INSERT INTO `qq_content` VALUES ('98', '1', '3', '你好\n', '1431794880');
INSERT INTO `qq_content` VALUES ('99', '1', '3', '在干嘛呢\n', '1431794883');
INSERT INTO `qq_content` VALUES ('100', '1', '3', '我在这里做什么啊\n', '1431794887');
INSERT INTO `qq_content` VALUES ('101', '1', '3', '打机来不来\n', '1431794896');
INSERT INTO `qq_content` VALUES ('102', '1', '7', '你好\n', '1433554047');
INSERT INTO `qq_content` VALUES ('103', '1', '7', '魂牵梦萦\n', '1433554084');
INSERT INTO `qq_content` VALUES ('104', '0', '3', 'fdsa', '1437878942');
INSERT INTO `qq_content` VALUES ('105', '14', '3', 'fdsaafdsafdsa', '1437879124');
INSERT INTO `qq_content` VALUES ('106', '14', '3', 'fdsa', '1437879219');
INSERT INTO `qq_content` VALUES ('107', '14', '3', 'fdsa\n', '1437879233');
INSERT INTO `qq_content` VALUES ('108', '14', '3', 'fdsa\n', '1437879234');
INSERT INTO `qq_content` VALUES ('109', '14', '3', 'fdsa\n', '1437879235');
INSERT INTO `qq_content` VALUES ('110', '14', '3', 'fdsa\n', '1437879236');
INSERT INTO `qq_content` VALUES ('111', '14', '3', 'fdsa\n', '1437879237');
INSERT INTO `qq_content` VALUES ('112', '14', '3', 'fdsa\n', '1437879238');
INSERT INTO `qq_content` VALUES ('113', '14', '3', 'fdsa\n', '1437879240');
INSERT INTO `qq_content` VALUES ('114', '14', '3', 'fdsa\n', '1437879241');
INSERT INTO `qq_content` VALUES ('115', '14', '3', 'fdsa\n', '1437879242');
INSERT INTO `qq_content` VALUES ('116', '14', '3', 'fdsa\n', '1437879244');
INSERT INTO `qq_content` VALUES ('117', '14', '3', 'fdsa\n', '1437879245');
INSERT INTO `qq_content` VALUES ('118', '14', '3', 'fdsa\n', '1437879246');
INSERT INTO `qq_content` VALUES ('119', '14', '3', 'fdsa\n', '1437879246');
INSERT INTO `qq_content` VALUES ('120', '14', '3', 'fdsa\n', '1437879247');
INSERT INTO `qq_content` VALUES ('121', '3', '14', 'fdsa', '1437879803');
INSERT INTO `qq_content` VALUES ('122', '3', '14', 'ggghhhh', '1437880308');
INSERT INTO `qq_content` VALUES ('123', '3', '14', 'fdsa\n', '1437880479');
INSERT INTO `qq_content` VALUES ('124', '14', '11', '最好\n', '1438171171');
INSERT INTO `qq_content` VALUES ('125', '11', '15', 'zCdw\n', '1438408121');
INSERT INTO `qq_content` VALUES ('126', '15', '11', 'kghjhgdyghhgfhgf', '1438408129');
INSERT INTO `qq_content` VALUES ('127', '15', '11', 'iu', '1438408134');
INSERT INTO `qq_content` VALUES ('128', '15', '11', 'u', '1438408138');
INSERT INTO `qq_content` VALUES ('129', '2', '1', '哦i如今回归i家 \n', '1438589106');
INSERT INTO `qq_content` VALUES ('130', '18', '2', '看看能不能收到\n', '1438589166');
INSERT INTO `qq_content` VALUES ('131', '2', '18', '。每晚都能金卡恶搞封闭空间范围非\n', '1438589168');
INSERT INTO `qq_content` VALUES ('132', '18', '2', '魂牵梦萦魂牵梦萦\n', '1438589171');
INSERT INTO `qq_content` VALUES ('133', '2', '18', '你好啊\n', '1438589205');
INSERT INTO `qq_content` VALUES ('134', '18', '2', '好\n', '1438589208');
INSERT INTO `qq_content` VALUES ('135', '18', '2', '傻\n', '1438589211');
INSERT INTO `qq_content` VALUES ('136', '2', '18', '逼\n', '1438589215');
INSERT INTO `qq_content` VALUES ('137', '4', '11', 'fdsa\n', '1438617659');
INSERT INTO `qq_content` VALUES ('138', '1', '2', 'hi\n', '1438674151');
INSERT INTO `qq_content` VALUES ('139', '21', '11', 'haha\n', '1438783908');
INSERT INTO `qq_content` VALUES ('140', '11', '21', 'aa\n', '1438783908');
INSERT INTO `qq_content` VALUES ('141', '21', '11', 'bb\n', '1438783913');
INSERT INTO `qq_content` VALUES ('142', '11', '21', '不玩了，来打机\n', '1438783917');
INSERT INTO `qq_content` VALUES ('143', '11', '21', '可以上传头像的\n', '1438783921');
INSERT INTO `qq_content` VALUES ('144', '21', '11', '。。。\n', '1438783922');
INSERT INTO `qq_content` VALUES ('145', '21', '11', '特么的上面那个是坑我的\n', '1438783937');
INSERT INTO `qq_content` VALUES ('146', '11', '21', '哈哈，那。。。。没弄好\n', '1438783956');
INSERT INTO `qq_content` VALUES ('147', '21', '11', '不会提醒有信息\n', '1438784025');
INSERT INTO `qq_content` VALUES ('148', '11', '21', '对，这个还没有弄，\n', '1438784049');
INSERT INTO `qq_content` VALUES ('149', '29', '1', '测试下\n', '1439099307');
INSERT INTO `qq_content` VALUES ('150', '11', '29', '你去哪里呀\n', '1439099406');
INSERT INTO `qq_content` VALUES ('151', '11', '2', '不要逗\n', '1439105676');
INSERT INTO `qq_content` VALUES ('152', '29', '14', '晴晴\n', '1439108127');
INSERT INTO `qq_content` VALUES ('153', '15', '29', '在？\n', '1439123542');
INSERT INTO `qq_content` VALUES ('154', '11', '15', 'fdsa\n', '1439124183');
INSERT INTO `qq_content` VALUES ('155', '1', '2', 'ssssss', '1439202647');
INSERT INTO `qq_content` VALUES ('156', '1', '22', '123', '1439202661');
INSERT INTO `qq_content` VALUES ('157', '1', '22', '我是生活的逗逼', '1439202669');
INSERT INTO `qq_content` VALUES ('158', '29', '1', '震荡', '1439518283');
INSERT INTO `qq_content` VALUES ('159', '1', '29', 'java,php\n', '1439692079');
INSERT INTO `qq_content` VALUES ('160', '1', '29', 'linux,redis,memcache\n', '1439780739');
INSERT INTO `qq_content` VALUES ('161', '29', '15', 'hdjjdhshsgsg进你空间\n', '1440225826');
INSERT INTO `qq_content` VALUES ('162', '1', '29', 'fdsfdsfd', '1441986770');
INSERT INTO `qq_content` VALUES ('163', '1', '11', 'fd\n', '1442891363');
INSERT INTO `qq_content` VALUES ('165', '35', '29', 'HI \n', '1443605458');
INSERT INTO `qq_content` VALUES ('166', '29', '35', '收到', '1443605463');
INSERT INTO `qq_content` VALUES ('167', '29', '35', '其实这个对话不好用\n', '1443605475');
INSERT INTO `qq_content` VALUES ('168', '35', '29', '不错，不错\n', '1443605500');
INSERT INTO `qq_content` VALUES ('169', '29', '35', '我用是AJAX技术来异步实现的\n', '1443605502');
INSERT INTO `qq_content` VALUES ('170', '29', '35', '用了最差的实时异步\n', '1443605519');
INSERT INTO `qq_content` VALUES ('171', '35', '29', '现在的QQ是同步的吗？\n', '1443605535');
INSERT INTO `qq_content` VALUES ('172', '29', '35', '时刻都在与后台交换数据，\n', '1443605537');
INSERT INTO `qq_content` VALUES ('173', '29', '35', '我这种方式比较耗流量\n', '1443605571');
INSERT INTO `qq_content` VALUES ('174', '29', '35', '如果大量用户的时候就会卡死\n', '1443605585');
INSERT INTO `qq_content` VALUES ('175', '35', '29', '哈哈\n', '1443605611');
INSERT INTO `qq_content` VALUES ('176', '35', '29', '已经有多少个用户了\n', '1443605622');
INSERT INTO `qq_content` VALUES ('177', '29', '35', '我上段时间就是想做这个东西来找工作的，做为一个项目经验而已\n', '1443605640');
INSERT INTO `qq_content` VALUES ('178', '29', '35', '哪有用户\n', '1443605648');
INSERT INTO `qq_content` VALUES ('179', '35', '29', '这个网站链接你是注册的了？\n', '1443605690');
INSERT INTO `qq_content` VALUES ('180', '35', '29', '是永久性的吗？\n', '1443605698');
INSERT INTO `qq_content` VALUES ('181', '29', '35', '是永久的哇，\n', '1443605737');
INSERT INTO `qq_content` VALUES ('182', '29', '35', '这个域名我备案的了，28块钱一年\n', '1443605749');
INSERT INTO `qq_content` VALUES ('183', '29', '35', '服务器就是用了万网的，免费版，用两年\n', '1443605766');
INSERT INTO `qq_content` VALUES ('184', '35', '29', '挺便宜的\n', '1443605821');
INSERT INTO `qq_content` VALUES ('185', '29', '35', '又不作商业用途的，弄个免费版来玩的\n', '1443605858');
INSERT INTO `qq_content` VALUES ('186', '35', '29', '嗯\n', '1443605881');
INSERT INTO `qq_content` VALUES ('187', '29', '35', '你什么时候升经理啊\n', '1443605937');
INSERT INTO `qq_content` VALUES ('188', '35', '29', '公司都快倒闭了\n', '1443605951');
INSERT INTO `qq_content` VALUES ('189', '35', '29', '还经理\n', '1443605957');
INSERT INTO `qq_content` VALUES ('190', '29', '35', '不是吧\n', '1443606002');
INSERT INTO `qq_content` VALUES ('191', '35', '29', '反正就不好\n', '1443606023');
INSERT INTO `qq_content` VALUES ('192', '29', '35', '你也快三年工作经验了，程序员的工作经验很值钱的\n', '1443606042');
INSERT INTO `qq_content` VALUES ('193', '35', '29', '估计现在好的只有互联网了\n', '1443606043');
INSERT INTO `qq_content` VALUES ('194', '29', '35', '你又不肯跳来做互联网\n', '1443606060');
INSERT INTO `qq_content` VALUES ('195', '35', '29', '嘿嘿，可以得哦\n', '1443606295');
INSERT INTO `qq_content` VALUES ('196', '35', '29', '有点类似重新来过\n', '1443606313');
INSERT INTO `qq_content` VALUES ('197', '29', '35', '工\n', '1443606398');
INSERT INTO `qq_content` VALUES ('198', '29', '14', '&lt;script&gt;alert(11);&lt;/script&gt;', '1444288205');
INSERT INTO `qq_content` VALUES ('199', '29', '15', '0\n', '1444309362');
INSERT INTO `qq_content` VALUES ('200', '29', '15', '上\n', '1444309390');
INSERT INTO `qq_content` VALUES ('201', '29', '15', '1\n', '1444309454');
INSERT INTO `qq_content` VALUES ('202', '29', '15', '3\n', '1444309456');
INSERT INTO `qq_content` VALUES ('203', '29', '15', '3\n', '1444309456');
INSERT INTO `qq_content` VALUES ('204', '29', '15', '3\n', '1444309457');
INSERT INTO `qq_content` VALUES ('205', '29', '15', '6\n', '1444309457');
INSERT INTO `qq_content` VALUES ('206', '29', '15', '6\n', '1444309458');
INSERT INTO `qq_content` VALUES ('207', '29', '15', '23\n', '1444309458');
INSERT INTO `qq_content` VALUES ('208', '1', '29', 'tggg\n', '1455527351');
INSERT INTO `qq_content` VALUES ('209', '1', '29', 't\n', '1455527356');
INSERT INTO `qq_content` VALUES ('210', '1', '14', '你好\n', '1455608360');
INSERT INTO `qq_content` VALUES ('211', '29', '14', '哟\n', '1455697506');
INSERT INTO `qq_content` VALUES ('212', '1', '14', '不好\n', '1463631656');
INSERT INTO `qq_content` VALUES ('248', '4', '1', '测试', '1492020405');
INSERT INTO `qq_content` VALUES ('249', '1', '4', 'pass', '1492020424');
INSERT INTO `qq_content` VALUES ('250', '1', '11', 'fdsa', '1513760888');

-- ----------------------------
-- Table structure for qq_relation
-- ----------------------------
DROP TABLE IF EXISTS `qq_relation`;
CREATE TABLE `qq_relation` (
  `relation_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `friend_id` int(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `remark` varchar(32) NOT NULL,
  `group_name` varchar(32) NOT NULL,
  `ps` varchar(100) NOT NULL,
  PRIMARY KEY (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=98 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qq_relation
-- ----------------------------
INSERT INTO `qq_relation` VALUES ('1', '14', '2', '1', '', '我的好友', '');
INSERT INTO `qq_relation` VALUES ('34', '11', '8', '0', '', '我的好友', '我是');
INSERT INTO `qq_relation` VALUES ('3', '14', '4', '1', '', '我的好友', '');
INSERT INTO `qq_relation` VALUES ('4', '14', '3', '0', '', '我的好友', '');
INSERT INTO `qq_relation` VALUES ('5', '14', '1', '1', '', '我的好友', '');
INSERT INTO `qq_relation` VALUES ('6', '11', '5', '0', '', '我的好友', '我是');
INSERT INTO `qq_relation` VALUES ('7', '11', '7', '0', '', '我的好友', '');
INSERT INTO `qq_relation` VALUES ('10', '11', '2', '1', '逗B', '我的好友', '');
INSERT INTO `qq_relation` VALUES ('11', '11', '4', '1', '菜D', '我的好友', '我是');
INSERT INTO `qq_relation` VALUES ('12', '11', '3', '0', '', '我的好友', '');
INSERT INTO `qq_relation` VALUES ('13', '11', '1', '1', '一号登录Q', '我的好友', '我是晴晴');
INSERT INTO `qq_relation` VALUES ('27', '1', '11', '1', '女', '我的好友', '');
INSERT INTO `qq_relation` VALUES ('28', '1', '14', '1', '晴晴', '我的好友', '');
INSERT INTO `qq_relation` VALUES ('29', '1', '2', '1', '逗比', '我的好友', '我是AAA');
INSERT INTO `qq_relation` VALUES ('32', '2', '1', '1', '', '我的好友', '');
INSERT INTO `qq_relation` VALUES ('33', '2', '11', '1', '', '我的好友', '');
INSERT INTO `qq_relation` VALUES ('35', '15', '7', '0', '', '我的好友', '我是');
INSERT INTO `qq_relation` VALUES ('36', '15', '11', '1', '', '我的好友', '我是32165641');
INSERT INTO `qq_relation` VALUES ('37', '11', '15', '1', '基哥', '我的好友', '');
INSERT INTO `qq_relation` VALUES ('38', '17', '2', '1', '', '我的好友', '我是621564');
INSERT INTO `qq_relation` VALUES ('39', '2', '17', '1', '', '我的好友', '');
INSERT INTO `qq_relation` VALUES ('40', '2', '14', '1', '', '我的好友', '');
INSERT INTO `qq_relation` VALUES ('41', '18', '2', '1', '', '我的好友', '我是远');
INSERT INTO `qq_relation` VALUES ('42', '2', '18', '1', '', '我的好友', '');
INSERT INTO `qq_relation` VALUES ('43', '11', '16', '0', '', '我的好友', '我是');
INSERT INTO `qq_relation` VALUES ('52', '1', '7', '0', '', '我的好友', '我是');
INSERT INTO `qq_relation` VALUES ('44', '1', '4', '1', '', '我的好友', '我是');
INSERT INTO `qq_relation` VALUES ('45', '1', '15', '1', '基哥', '我的好友', '我是');
INSERT INTO `qq_relation` VALUES ('46', '1', '17', '0', '', '我的好友', '我是');
INSERT INTO `qq_relation` VALUES ('47', '2', '8', '0', '', '我的好友', '我是');
INSERT INTO `qq_relation` VALUES ('48', '2', '4', '1', '', '我的好友', '我是');
INSERT INTO `qq_relation` VALUES ('49', '2', '5', '0', '', '我的好友', '我是');
INSERT INTO `qq_relation` VALUES ('50', '2', '15', '1', '', '我的好友', '我是');
INSERT INTO `qq_relation` VALUES ('51', '14', '6', '0', '', '我的好友', '我是');
INSERT INTO `qq_relation` VALUES ('53', '4', '11', '1', '', '我的好友', '');
INSERT INTO `qq_relation` VALUES ('54', '4', '14', '1', '', '我的好友', '');
INSERT INTO `qq_relation` VALUES ('55', '4', '2', '1', '', '我的好友', '');
INSERT INTO `qq_relation` VALUES ('56', '4', '1', '1', '', '我的好友', '');
INSERT INTO `qq_relation` VALUES ('57', '19', '18', '0', '', '我的好友', '我是');
INSERT INTO `qq_relation` VALUES ('58', '20', '18', '0', '', '我的好友', '我是');
INSERT INTO `qq_relation` VALUES ('59', '21', '6', '0', '', '我的好友', '我是');
INSERT INTO `qq_relation` VALUES ('60', '21', '1', '1', '', '我的好友', '我是');
INSERT INTO `qq_relation` VALUES ('61', '11', '21', '1', '啊四', '我的好友', '我是');
INSERT INTO `qq_relation` VALUES ('62', '21', '11', '1', '', '我的好友', '');
INSERT INTO `qq_relation` VALUES ('63', '22', '1', '1', '', '我的好友', '我是44');
INSERT INTO `qq_relation` VALUES ('64', '28', '16', '0', '', '我的好友', '我是1111');
INSERT INTO `qq_relation` VALUES ('65', '1', '22', '1', '', '我的好友', '');
INSERT INTO `qq_relation` VALUES ('66', '29', '14', '1', '梓晴', '我的好友', '我是');
INSERT INTO `qq_relation` VALUES ('67', '1', '29', '1', '啊远', '我的好友', '我是');
INSERT INTO `qq_relation` VALUES ('68', '29', '1', '1', 'QQ一号tg', '我的好友', '');
INSERT INTO `qq_relation` VALUES ('69', '29', '11', '1', '女儿', '我的好友', '我是');
INSERT INTO `qq_relation` VALUES ('70', '11', '29', '1', '啊远', '我的好友', '');
INSERT INTO `qq_relation` VALUES ('71', '14', '29', '1', '', '我的好友', '');
INSERT INTO `qq_relation` VALUES ('72', '6', '29', '1', '', '我的好友', '我是GG');
INSERT INTO `qq_relation` VALUES ('73', '29', '30', '0', '', '我的好友', '我是开发者');
INSERT INTO `qq_relation` VALUES ('74', '29', '7', '0', '', '我的好友', '我是');
INSERT INTO `qq_relation` VALUES ('75', '29', '2', '0', '', '我的好友', '我是');
INSERT INTO `qq_relation` VALUES ('76', '29', '15', '1', '基哥', '我的好友', '我是');
INSERT INTO `qq_relation` VALUES ('77', '29', '22', '0', '', '我的好友', '我是');
INSERT INTO `qq_relation` VALUES ('78', '15', '1', '1', '', '我的好友', '');
INSERT INTO `qq_relation` VALUES ('79', '15', '2', '1', '', '我的好友', '');
INSERT INTO `qq_relation` VALUES ('80', '15', '29', '1', '', '我的好友', '');
INSERT INTO `qq_relation` VALUES ('81', '32', '5', '0', '', '我的好友', '我是');
INSERT INTO `qq_relation` VALUES ('82', '32', '14', '0', '', '我的好友', '我是');
INSERT INTO `qq_relation` VALUES ('83', '32', '29', '1', '', '我的好友', '我是');
INSERT INTO `qq_relation` VALUES ('84', '32', '18', '0', '', '我的好友', '我是');
INSERT INTO `qq_relation` VALUES ('85', '29', '31', '0', '', '我的好友', '我是开发者');
INSERT INTO `qq_relation` VALUES ('86', '29', '4', '0', '', '我的好友', '我是');
INSERT INTO `qq_relation` VALUES ('87', '29', '32', '1', '口', '我的好友', '');
INSERT INTO `qq_relation` VALUES ('92', '1', '21', '1', '', '我的好友', '');
INSERT INTO `qq_relation` VALUES ('89', '29', '6', '1', '', '我的好友', '');
INSERT INTO `qq_relation` VALUES ('90', '29', '35', '1', '', '我的好友', '我是柯');
INSERT INTO `qq_relation` VALUES ('91', '35', '29', '1', '', '我的好友', '');
INSERT INTO `qq_relation` VALUES ('93', '29', '20', '0', '', '我的好友', '我是');
INSERT INTO `qq_relation` VALUES ('94', '37', '31', '0', '', '我的好友', '我是');
INSERT INTO `qq_relation` VALUES ('95', '37', '29', '0', '', '我的好友', '我是');
INSERT INTO `qq_relation` VALUES ('96', '37', '28', '0', '', '我的好友', '我是');
INSERT INTO `qq_relation` VALUES ('97', '1', '30', '0', '', '我的好友', '我是');

-- ----------------------------
-- Table structure for qq_user
-- ----------------------------
DROP TABLE IF EXISTS `qq_user`;
CREATE TABLE `qq_user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `qq_openid` varchar(32) NOT NULL,
  `user_name` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `login_time` int(10) NOT NULL,
  `logout_time` int(10) NOT NULL,
  `logo` varchar(50) NOT NULL,
  `style_name` varchar(100) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`user_name`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qq_user
-- ----------------------------
INSERT INTO `qq_user` VALUES ('1', '', 'aa', '4124bc0a9335c27f086f24ba207a4912', '1431690968', '1513760924', 'upload/1438673903623.jpg', '我是AA这家伙很懒，什么都没留下，牛逼的存在');
INSERT INTO `qq_user` VALUES ('2', '', 'bb', '21ad0bd836b90d08f4cf640b4c298e7c', '1431691132', '1492001087', 'upload/1438616453833.jpg', '也十分舒服');
INSERT INTO `qq_user` VALUES ('3', '', 'cc', 'e0323a9039add2978bf5b49550572c7c', '1431693702', '1437880503', '', '');
INSERT INTO `qq_user` VALUES ('4', '', 'dd', '1aabac6d068eef6a7bad3fdf50a05cc8', '1431694942', '1431709578', '', '');
INSERT INTO `qq_user` VALUES ('5', '', 'ee', '08a4415e9d594ff960030b921d42b91e', '1431695188', '0', '', '');
INSERT INTO `qq_user` VALUES ('6', '', 'gg', '73c18c59a39b18382081ec00bb456d43', '1431695252', '1439099390', '', '');
INSERT INTO `qq_user` VALUES ('7', '', 'yy', '2fb1c5cf58867b5bbc9a1b145a86f3a0', '1431695360', '0', '', '');
INSERT INTO `qq_user` VALUES ('8', '', 'aaa', '47bce5c74f589f4867dbd57e9ca9f808', '1431705085', '1431707349', '', '');
INSERT INTO `qq_user` VALUES ('11', '', '晴晴', '6b9260b1e02041a665d4e4a5117cfe16', '1437658736', '1476287299', 'upload/1438616321234.jpg', '晴晴晴晴晴');
INSERT INTO `qq_user` VALUES ('14', '', '柯梓晴', '6b9260b1e02041a665d4e4a5117cfe16', '1437877980', '1439099358', 'upload/1438616497325.jpg', '爸妈');
INSERT INTO `qq_user` VALUES ('15', '', 'tr', '7be314e8577e1977efb68b15c875b6ca', '1438407714', '1439123602', '', '4545');
INSERT INTO `qq_user` VALUES ('16', '', '1', 'e10adc3949ba59abbe56e057f20f883e', '1438443592', '0', '', '');
INSERT INTO `qq_user` VALUES ('17', '', 'www', '6b9260b1e02041a665d4e4a5117cfe16', '1438588601', '1438588648', '', '');
INSERT INTO `qq_user` VALUES ('18', '', '远', '6b9260b1e02041a665d4e4a5117cfe16', '1438589117', '0', '', '浪');
INSERT INTO `qq_user` VALUES ('19', '', '123', 'e10adc3949ba59abbe56e057f20f883e', '1438652346', '0', '', '');
INSERT INTO `qq_user` VALUES ('20', '', '柯琼远大哥', '89b642f986c58645af559423c0c902eb', '1438653579', '0', '', '');
INSERT INTO `qq_user` VALUES ('21', '', '1234', 'e10adc3949ba59abbe56e057f20f883e', '1438783749', '0', '', 'aaaaaaa');
INSERT INTO `qq_user` VALUES ('22', '', '胜利者', '25f9e794323b453885f5181f1b624d0b', '1438852330', '1438852427', '', '我是生活的逗逼');
INSERT INTO `qq_user` VALUES ('29', '37CA14FCEC5D8A3A0946D5E89DAAE1CB', '柯琼远', 'f67daa8c1ff48b517c83f678b812985c', '1481769394', '1481769402', 'upload/1438997452971.jpg', '生活如此精彩');
INSERT INTO `qq_user` VALUES ('28', '', '111', '96e79218965eb72c92a549dd5a330112', '1438997429', '1438997617', '', '');
INSERT INTO `qq_user` VALUES ('30', '47A95DE6D45D7C029F350668A002FBEE', '黑子', '44963dc868d485fb64fcda37084210cd', '1439020454', '1439020475', 'upload/1439020437711.jpg', '');
INSERT INTO `qq_user` VALUES ('31', '22D7995A7B237F9E38CA994729AF82F7', '白子画', 'ab1bf014f92951651e2e5ee417e590d5', '1439289216', '1439169062', 'upload/1439169032504.jpg', '');
INSERT INTO `qq_user` VALUES ('32', '', 'asdfasdf', '6a204bd89f3c8348afd5c77c717a097a', '1439278946', '1439279004', '', 'asfasdf');
INSERT INTO `qq_user` VALUES ('33', '28D313CDE8DF2D496D3A2B43D971A612', '总攻', 'efbbad1e4d3f283abd72bffe204fe642', '1444437550', '0', 'upload/1439289212550.jpg', '');
INSERT INTO `qq_user` VALUES ('34', '', 'ceclian2323', 'e10adc3949ba59abbe56e057f20f883e', '1439975770', '0', '', '');
INSERT INTO `qq_user` VALUES ('35', '', 'JJ', 'e10adc3949ba59abbe56e057f20f883e', '1443605284', '0', '', '');
INSERT INTO `qq_user` VALUES ('36', '', 'tt', 'bcc720f2981d1a68dbd66ffd67560c37', '1444196664', '0', '', '');
INSERT INTO `qq_user` VALUES ('37', '', 'test', 'e10adc3949ba59abbe56e057f20f883e', '1477989660', '0', '', '');

-- ----------------------------
-- Table structure for wb_comment
-- ----------------------------
DROP TABLE IF EXISTS `wb_comment`;
CREATE TABLE `wb_comment` (
  `user` char(20) NOT NULL COMMENT '用户名',
  `title` char(100) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '内容',
  `datetime` int(50) NOT NULL COMMENT '时间',
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=82 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of wb_comment
-- ----------------------------
INSERT INTO `wb_comment` VALUES ('aa', '楞魂牵梦萦国', '工魂牵梦萦 回蓝要；工魂牵梦萦是；城；械魂牵梦萦回蓝', '1422178210', '1');
INSERT INTO `wb_comment` VALUES ('aa', '', '', '1422178437', '2');
INSERT INTO `wb_comment` VALUES ('aa', '魂牵梦萦魂牵梦萦魂牵梦萦', '魂牵梦萦魂牵梦萦魂牵梦萦魂牵梦萦魂牵梦萦魂牵梦萦魂牵梦萦', '1422178437', '3');
INSERT INTO `wb_comment` VALUES ('aa', '魂牵梦萦魂牵梦萦魂牵梦萦', '魂牵梦萦魂牵梦萦魂牵梦萦魂牵梦萦魂牵梦萦魂牵梦萦魂牵梦萦', '1422178437', '4');
INSERT INTO `wb_comment` VALUES ('aa', '', '', '1422178511', '5');
INSERT INTO `wb_comment` VALUES ('aa', '', '', '1422178606', '6');
INSERT INTO `wb_comment` VALUES ('aa', 'fdsafgdgfd', 'fdsafdsagfdsgfdghbvchgytr', '1422178658', '7');
INSERT INTO `wb_comment` VALUES ('aa', '', '', '1422178800', '8');
INSERT INTO `wb_comment` VALUES ('aa', '心魂牵梦萦', '魂牵梦萦', '1422179613', '9');
INSERT INTO `wb_comment` VALUES ('kms', '我你他', '我你他', '1422368988', '43');
INSERT INTO `wb_comment` VALUES ('aa', '魂牵梦萦', '魂牵梦萦', '1422180492', '12');
INSERT INTO `wb_comment` VALUES ('aa', 'fdsa', 'fdsa', '1422195713', '13');
INSERT INTO `wb_comment` VALUES ('aa', '魂牵梦萦', '魂牵梦萦回蓝', '1422195729', '14');
INSERT INTO `wb_comment` VALUES ('aa', '我在这里', '今天一起去看雪', '1422196965', '15');
INSERT INTO `wb_comment` VALUES ('aa', '志晓', '志晓和丹丹是天生的一对；', '1422197042', '16');
INSERT INTO `wb_comment` VALUES ('yke', '我是歌手', '第三季，湖南卫士', '1422197967', '17');
INSERT INTO `wb_comment` VALUES ('aa', 'fdsa', 'fdsa', '1422200319', '18');
INSERT INTO `wb_comment` VALUES ('aa', '一起去大夫山。。', '今天天气好晴朗，歌手、、、', '1422200347', '19');
INSERT INTO `wb_comment` VALUES ('123', '二叔佬的车票好贵', '二叔佬的车票好贵，大家都想不明白，不知他要钱是用来干嘛的', '1422202072', '20');
INSERT INTO `wb_comment` VALUES ('123', '&#9756;~%', '……+给”&#9822;*^_^*', '1422202254', '21');
INSERT INTO `wb_comment` VALUES ('kby', '大家园', '我们都有一个家，名字叫中国', '1422211351', '31');
INSERT INTO `wb_comment` VALUES ('kby', '再来', '再来再来', '1422211437', '34');
INSERT INTO `wb_comment` VALUES ('keqiongyuan', '学习php', '第一节课：配置环境。', '1422214118', '35');
INSERT INTO `wb_comment` VALUES ('yke', '我发发表', '验证用来，我回复', '1422208640', '25');
INSERT INTO `wb_comment` VALUES ('kby', 'fdsa', 'fdsa', '1422211074', '26');
INSERT INTO `wb_comment` VALUES ('zhuli', 'How are you?', 'Fine,thanks.And you?\r\nI\'m fine too.', '1422273415', '36');
INSERT INTO `wb_comment` VALUES ('kms', 'Fine,thanks.And you? I\'m fine too.\r\n\r\n\r\nzhuli回复：在家？\r\n2015-01-26 01:05:16\r\nzhuli回复：是的\r\n2015-01-26 01:', 'Fine,thanks.And you? I\'m fine too.\r\n\r\n\r\nzhuli回复：在家？\r\n2015-01-26 01:05:16\r\nzhuli回复：是的\r\n2015-01-26 01:05:22\r\nzhuli回复：在家做什么\r\n2015-01-26 01:05:29\r\nzhuli回复：没事做，玩着呢\r\n2015-01-26 01:05:38\r\nzhuli回复：好吧\r\n2015-01-26 01:05:43\r\n还有4条回复，查看更多', '1422367531', '39');
INSERT INTO `wb_comment` VALUES ('zhuli', 'resize:none;', 'resize:none;resize:none;', '1422297599', '38');
INSERT INTO `wb_comment` VALUES ('kms', '陈志晓', '郑晓丹~~陈志晓；；', '1422368668', '40');
INSERT INTO `wb_comment` VALUES ('kms', '陈志晓', '陈晓志陈志晓；', '1422368717', '41');
INSERT INTO `wb_comment` VALUES ('kms', '陈志晓', '陈晓志陈志晓；', '1422368766', '42');
INSERT INTO `wb_comment` VALUES ('kms', '林一', '魂牵梦萦', '1422378350', '44');
INSERT INTO `wb_comment` VALUES ('kms', '柯玉米', '陈志晓题:林一\r\n陈晓志陈志晓；', '1422378409', '45');
INSERT INTO `wb_comment` VALUES ('kms', '好', '好好', '1422378692', '46');
INSERT INTO `wb_comment` VALUES ('kms', '城', '城市化  ', '1422378909', '47');
INSERT INTO `wb_comment` VALUES ('kms', '魂牵梦萦回蓝', '朝秦暮楚', '1422378929', '48');
INSERT INTO `wb_comment` VALUES ('kms', '魂牵梦萦', '魂牵梦萦', '1422379051', '49');
INSERT INTO `wb_comment` VALUES ('kms', '321', '3213', '1422379076', '50');
INSERT INTO `wb_comment` VALUES ('kms', '243', '432', '1422379120', '51');
INSERT INTO `wb_comment` VALUES ('kms', '1', '1', '1422379418', '52');
INSERT INTO `wb_comment` VALUES ('kms', '2', '2', '1422379560', '53');
INSERT INTO `wb_comment` VALUES ('kms', '5', '5', '1422379640', '54');
INSERT INTO `wb_comment` VALUES ('kms', '验证插入一张图片', '插入一张JPG的图片，大小为69K，然后发表。。', '1422381050', '56');
INSERT INTO `wb_comment` VALUES ('kms', '21', '21', '1422381417', '57');
INSERT INTO `wb_comment` VALUES ('kms', '再', '魂牵梦萦', '1422382676', '58');
INSERT INTO `wb_comment` VALUES ('kms', '好', '好好好', '1422382728', '59');
INSERT INTO `wb_comment` VALUES ('kms', '图片', '再上传一张', '1422384380', '60');
INSERT INTO `wb_comment` VALUES ('kms', 'vb r', 'fdsa', '1422385989', '61');
INSERT INTO `wb_comment` VALUES ('kms', '最后上传一张', '00', '1422386947', '62');
INSERT INTO `wb_comment` VALUES ('july', '今天天气好晴朗！', '骑着单车去潇洒，好好滴观看祖国大好山河。', '1422543392', '63');
INSERT INTO `wb_comment` VALUES ('qqqq', 'xxx', 'xxxxxxxxxxxxxx', '1422639429', '64');
INSERT INTO `wb_comment` VALUES ('aa', '陈志晓', '这周要加班，不烧烤了！', '1423157091', '65');
INSERT INTO `wb_comment` VALUES ('柯琼远', '加班', '加班时间超过1个半小时，可以累积', '1444274944', '67');
INSERT INTO `wb_comment` VALUES ('柯琼远', '晴晴', '、、、、、、、、、、、、、、、', '1444275046', '68');
INSERT INTO `wb_comment` VALUES ('fdsafdsafdsafdsa', 'kfdskla', 'fdsafdsafdsafdsafdsa', '1444310074', '69');
INSERT INTO `wb_comment` VALUES ('aa', '晴晴', '晴晴漂亮', '1444703495', '70');
INSERT INTO `wb_comment` VALUES ('yke109', '玩沙堆', '晴晴一个人在玩什么呢', '1462330735', '71');
INSERT INTO `wb_comment` VALUES ('yke109', '测试一张看看', 'BUG已修复好了，查看下', '1462333912', '77');
INSERT INTO `wb_comment` VALUES ('yke109', 'BUG', '为什么出现一样的', '1462333171', '73');
INSERT INTO `wb_comment` VALUES ('aa', '晴', '土', '1467617691', '79');
INSERT INTO `wb_comment` VALUES ('aa', '晴晴', '晴晴', '1467617655', '78');
INSERT INTO `wb_comment` VALUES ('aa', '梓晴', '继续发', '1467617715', '80');
INSERT INTO `wb_comment` VALUES ('kejiajun', '到此一游', '6逼啊', '1481766657', '81');

-- ----------------------------
-- Table structure for wb_post
-- ----------------------------
DROP TABLE IF EXISTS `wb_post`;
CREATE TABLE `wb_post` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `user` char(20) NOT NULL COMMENT '用户名',
  `content` text NOT NULL COMMENT '回复内容',
  `datetime` int(50) NOT NULL COMMENT '时间',
  `uid` int(10) unsigned zerofill NOT NULL COMMENT '外键',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of wb_post
-- ----------------------------
INSERT INTO `wb_post` VALUES ('1', 'aa', '矛贵啪', '1422204776', '0000000020');
INSERT INTO `wb_post` VALUES ('2', 'aa', '爽！', '1422205865', '0000000021');
INSERT INTO `wb_post` VALUES ('3', 'aa', '贵都要买', '1422206331', '0000000020');
INSERT INTO `wb_post` VALUES ('4', 'aa', '好爽', '1422208448', '0000000020');
INSERT INTO `wb_post` VALUES ('5', 'yke', '快', '1422208651', '0000000025');
INSERT INTO `wb_post` VALUES ('13', 'yke', '好主意', '1422209437', '0000000025');
INSERT INTO `wb_post` VALUES ('16', 'yke', '柯琼远', '1422209923', '0000000021');
INSERT INTO `wb_post` VALUES ('25', 'kby', 'fdsa', '1422211056', '0000000025');
INSERT INTO `wb_post` VALUES ('28', 'kby', '好', '1422212095', '0000000020');
INSERT INTO `wb_post` VALUES ('29', 'kby', '再一条\r\n', '1422212107', '0000000020');
INSERT INTO `wb_post` VALUES ('30', 'kby', '再一条\r\n', '1422212108', '0000000020');
INSERT INTO `wb_post` VALUES ('31', 'kby', '于来', '1422212117', '0000000020');
INSERT INTO `wb_post` VALUES ('32', 'kby', '魂牵梦萦', '1422212149', '0000000020');
INSERT INTO `wb_post` VALUES ('37', 'keqiongyuan', '你要努力学习', '1422214129', '0000000035');
INSERT INTO `wb_post` VALUES ('38', 'keqiongyuan', '要坚持下来喔', '1422214139', '0000000035');
INSERT INTO `wb_post` VALUES ('39', 'keqiongyuan', '今天又通宵了', '1422214152', '0000000035');
INSERT INTO `wb_post` VALUES ('40', 'keqiongyuan', '什么时候才可以学成啊', '1422214165', '0000000035');
INSERT INTO `wb_post` VALUES ('41', 'keqiongyuan', '看来前景还是有点光明的', '1422214181', '0000000035');
INSERT INTO `wb_post` VALUES ('42', 'keqiongyuan', '只要不放弃', '1422214190', '0000000035');
INSERT INTO `wb_post` VALUES ('43', 'keqiongyuan', '这就成功啦？？？', '1422214201', '0000000035');
INSERT INTO `wb_post` VALUES ('44', 'zhuli', '在家？', '1422277516', '0000000036');
INSERT INTO `wb_post` VALUES ('45', 'zhuli', '是的', '1422277522', '0000000036');
INSERT INTO `wb_post` VALUES ('46', 'zhuli', '在家做什么', '1422277529', '0000000036');
INSERT INTO `wb_post` VALUES ('47', 'zhuli', '没事做，玩着呢', '1422277538', '0000000036');
INSERT INTO `wb_post` VALUES ('48', 'zhuli', '好吧', '1422277543', '0000000036');
INSERT INTO `wb_post` VALUES ('49', 'zhuli', '那不找点事情做吗', '1422277551', '0000000036');
INSERT INTO `wb_post` VALUES ('50', 'zhuli', '暂时没什么想法', '1422277558', '0000000036');
INSERT INTO `wb_post` VALUES ('51', 'zhuli', '加油吧', '1422277569', '0000000036');
INSERT INTO `wb_post` VALUES ('52', 'zhuli', '继续写', '1422291644', '0000000036');
INSERT INTO `wb_post` VALUES ('53', 'zhuli', '<?php echo \"标题:\".$result[\'title\']; ?><?php echo \"标题:\".$result[\'title\']; ?><?php echo \"标<?php echo \"标题:\".$result[\'title\']; ?>题:\".$result[\'title\']; ?><?php echo \"标题:\".$result[\'title\']; ?><?php echo \"标题:\".$result[\'title\']; ?><?php echo \"标题:\".$result[\'title\']; ?><?php echo \"标题:\".$result[\'title\']; ?><?php echo \"标题:\".$result[\'title\']; ?><?php echo \"标题:\".$result[\'title\']; ?><?php echo \"标题:\".$result[\'title\']; ?><?php echo \"标题:\".$result[\'title\']; ?><?php echo \"标题:\".$result[\'title\']; ?><?php echo \"标题:\".$result[\'title\']; ?><?php echo \"标题:\".$result[\'title\']; ?><?php echo \"标题:\".$result[\'title\']; ?>', '1422296028', '0000000037');
INSERT INTO `wb_post` VALUES ('54', 'zhuli', '<?php echo \"标题:\".$result[\'title\']; ?><?php echo \"标题:\".$result[\'title\']; ?>', '1422296037', '0000000037');
INSERT INTO `wb_post` VALUES ('55', 'zhuli', '段 不能字段换行， 求教各位大侠这个代码该...\r\n最佳答案：在上图可以看出是一个文本框控件，但下图似乎不是文本框控件了，所以你所贴代码... 但是你可以试试找到并删掉<nobr>和</nobr>，该标签用于控制内容不换行.\r\n', '1422296052', '0000000037');
INSERT INTO `wb_post` VALUES ('56', 'zhuli', '段 不能字段换行， 求教各位大侠这个代码该...\r\n最佳答案：在上图可以看出是一个文本框控件，但下图似乎不是文本框控件了，所以你所贴代码... 但是你可以试试找到并删掉<nobr>和</nobr>，该标签用于控制内容不换行.\r\n段 不能字段换行， 求教各位大侠这个代码该...\r\n最佳答案：在上图可以看出是一个文本框控件，但下图似乎不是文本框控件了，所以你所贴代码... 但是你可以试试找到并删掉<nobr>和</nobr>，该标签用于控制内容不换行.段 不能字段换行， 求教各位大侠这个代码该...\r\n最佳答案：在上图可以看出是一个文本框控件，但下图似乎不是文本框控件了，所以你所贴代码... 但是你可以试试找到并删掉<nobr>和</nobr>，该标签用于控制内容不换行.\r\n\r\n', '1422296068', '0000000037');
INSERT INTO `wb_post` VALUES ('57', 'zhuli', '段 不能字段换行， 求教各位大侠这个代码该...\r\n最佳答案：在上图可以看出是一个文本框控件，但下图似乎不是文本框控件了，所以你所贴代码... 但是你可以试试找到并删掉<nobr>和</nobr>，该标签用于控制内容不换行.\r\n', '1422296075', '0000000037');
INSERT INTO `wb_post` VALUES ('58', 'zhuli', '段 不能字段换行， 求教各位大侠这个代码该...\r\n最佳答案：在上图可以看出是一个文本框控件，但下图似乎不是文本框控件了，所以你所贴代码... 但是你可以试试找到并删掉<nobr>和</nobr>，该标签用于控制内容不换行.\r\n', '1422296077', '0000000037');
INSERT INTO `wb_post` VALUES ('59', 'zhuli', '段 不能字段换行， 求教各位大侠这个代码该...\r\n最佳答案：在上图可以看出是一个文本框控件，但下图似乎不是文本框控件了，所以你所贴代码... 但是你可以试试找到并删掉<nobr>和</nobr>，该标签用于控制内容不换行.\r\n段 不能字段换行， 求教各位大侠这个代码该...\r\n最佳答案：在上图可以看出是一个文本框控件，但下图似乎不是文本框控件了，所以你所贴代码... 但是你可以试试找到并删掉<nobr>和</nobr>，该标签用于控制内容不换行.\r\n段 不能字段换行， 求教各位大侠这个代码该...\r\n最佳答案：在上图可以看出是一个文本框控件，但下图似乎不是文本框控件了，所以你所贴代码... 但是你可以试试找到并删掉<nobr>和</nobr>，该标签用于控制内容不换行.\r\n段 不能字段换行， 求教各位大侠这个代码该...\r\n最佳答案：在上图可以看出是一个文本框控件，但下图似乎不是文本框控件了，所以你所贴代码... 但是你可以试试找到并删掉<nobr>和</nobr>，该标签用于控制内容不换行.\r\n', '1422296080', '0000000037');
INSERT INTO `wb_post` VALUES ('60', 'zhuli', '123', '1422297065', '0000000031');
INSERT INTO `wb_post` VALUES ('61', 'zhuli', '就讲一句话，走人\r\n', '1422298750', '0000000038');
INSERT INTO `wb_post` VALUES ('62', 'kms', '哈哈，原来没有问题的\r\n', '1422367564', '0000000039');
INSERT INTO `wb_post` VALUES ('63', 'kms', '魂牵梦萦', '1422381437', '0000000054');
INSERT INTO `wb_post` VALUES ('64', 'kms', '评价', '1422382763', '0000000059');
INSERT INTO `wb_post` VALUES ('65', 'kms', '这样效果怎么样', '1422384400', '0000000060');
INSERT INTO `wb_post` VALUES ('66', 'kms', 'I love U', '1422386310', '0000000021');
INSERT INTO `wb_post` VALUES ('67', 'kms', '还要以吗', '1422386476', '0000000034');
INSERT INTO `wb_post` VALUES ('68', 'kms', '好', '1422386500', '0000000039');
INSERT INTO `wb_post` VALUES ('69', 'kms', '好野', '1422386808', '0000000039');
INSERT INTO `wb_post` VALUES ('70', 'kms', '嗯', '1422386821', '0000000034');
INSERT INTO `wb_post` VALUES ('71', 'kms', '没事的', '1422386870', '0000000040');
INSERT INTO `wb_post` VALUES ('72', 'july', '哈哈', '1422543418', '0000000063');
INSERT INTO `wb_post` VALUES ('73', 'qqq', 'sssss地方', '1422638437', '0000000063');
INSERT INTO `wb_post` VALUES ('74', 'qqq', '在发展中国家 ', '1422638526', '0000000063');
INSERT INTO `wb_post` VALUES ('75', 'qqqq', 'sds ', '1422638556', '0000000063');
INSERT INTO `wb_post` VALUES ('76', 'qqqq', 'dsfdsfsd', '1422638566', '0000000063');
INSERT INTO `wb_post` VALUES ('77', 'qqqq', 'dsfsdfsd', '1422638570', '0000000063');
INSERT INTO `wb_post` VALUES ('78', 'qqqq', 'sdfsdfsd', '1422638575', '0000000063');
INSERT INTO `wb_post` VALUES ('79', 'qqqq', 'fdsfs', '1422638582', '0000000063');
INSERT INTO `wb_post` VALUES ('80', 'qqqq', 'dfsdf', '1422638608', '0000000062');
INSERT INTO `wb_post` VALUES ('81', 'qqqq', 'dsfsdf', '1422638629', '0000000062');
INSERT INTO `wb_post` VALUES ('82', 'qqqq', 'fsdfsdf', '1422638636', '0000000062');
INSERT INTO `wb_post` VALUES ('83', 'qqqq', 'dsfsdfsdf', '1422638642', '0000000062');
INSERT INTO `wb_post` VALUES ('84', 'qqqq', 'cfsdfs', '1422638650', '0000000062');
INSERT INTO `wb_post` VALUES ('85', 'qqqq', 'dfsdf', '1422638655', '0000000062');
INSERT INTO `wb_post` VALUES ('86', 'qqqq', 'cfsdfs', '1422642227', '0000000062');
INSERT INTO `wb_post` VALUES ('87', 'aa', '不行，志晓不在，一样烧起巨！', '1423157125', '0000000065');
INSERT INTO `wb_post` VALUES ('88', 'aa', '好主意', '1423157134', '0000000065');
INSERT INTO `wb_post` VALUES ('89', 'aa', '我出同意的', '1423157147', '0000000065');
INSERT INTO `wb_post` VALUES ('90', 'aa', '志晓讲，他会赶到回来的', '1423157164', '0000000065');
INSERT INTO `wb_post` VALUES ('91', 'aa', '甘竹礼，你去买生蚝啦', '1423157178', '0000000065');
INSERT INTO `wb_post` VALUES ('92', 'aa', '要买五蚊一只的，大大只，好食', '1423157195', '0000000065');
INSERT INTO `wb_post` VALUES ('93', 'aa', '顶', '1423157199', '0000000065');
INSERT INTO `wb_post` VALUES ('94', 'fdsafdsafdsafdsa', 'df', '1444310134', '0000000068');
INSERT INTO `wb_post` VALUES ('95', 'bb', 'fdsa', '1462328141', '0000000063');
INSERT INTO `wb_post` VALUES ('96', 'yke109', '你在干嘛呢', '1462334130', '0000000077');
INSERT INTO `wb_post` VALUES ('97', 'kejiajun', '不错', '1481767049', '0000000080');
INSERT INTO `wb_post` VALUES ('98', 'aa', '纳尼', '1482378619', '0000000081');
INSERT INTO `wb_post` VALUES ('99', 'aa', '测试', '1482378629', '0000000081');
INSERT INTO `wb_post` VALUES ('100', 'aa', '1', '1482549343', '0000000078');
INSERT INTO `wb_post` VALUES ('101', 'aa', '1', '1482549352', '0000000078');
INSERT INTO `wb_post` VALUES ('102', 'aa', '测试', '1482549365', '0000000081');
INSERT INTO `wb_post` VALUES ('103', 'aa', '下雨天', '1482549384', '0000000081');
INSERT INTO `wb_post` VALUES ('104', 'aa', '哈哈', '1482549392', '0000000081');
INSERT INTO `wb_post` VALUES ('105', 'aa', '中国', '1513754926', '0000000045');

-- ----------------------------
-- Table structure for wb_user
-- ----------------------------
DROP TABLE IF EXISTS `wb_user`;
CREATE TABLE `wb_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `user` char(20) CHARACTER SET utf8 NOT NULL COMMENT '用户名',
  `password` varchar(32) CHARACTER SET utf8 NOT NULL COMMENT '密码',
  `time` int(50) NOT NULL COMMENT '时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user` (`user`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=gb2312 COMMENT='记录用户信息';

-- ----------------------------
-- Records of wb_user
-- ----------------------------
INSERT INTO `wb_user` VALUES ('1', 'aa', '4124bc0a9335c27f086f24ba207a4912', '1420384661');
INSERT INTO `wb_user` VALUES ('2', 'bb', '21ad0bd836b90d08f4cf640b4c298e7c', '1420384688');
INSERT INTO `wb_user` VALUES ('3', 'qq', '099b3b060154898840f0ebdfb46ec78f', '1420385713');
INSERT INTO `wb_user` VALUES ('4', 'gg', '73c18c59a39b18382081ec00bb456d43', '1420386968');
INSERT INTO `wb_user` VALUES ('5', 'fd', '36eba1e1e343279857ea7f69a597324e', '1420386994');
INSERT INTO `wb_user` VALUES ('6', 'gf', '36eba1e1e343279857ea7f69a597324e', '1420387011');
INSERT INTO `wb_user` VALUES ('7', 'h', '2510c39011c5be704182423e3a695e91', '1420387047');
INSERT INTO `wb_user` VALUES ('8', 'yyy', 'f0a4058fd33489695d53df156b77c724', '1420388014');
INSERT INTO `wb_user` VALUES ('9', 'ggg', 'ba248c985ace94863880921d8900c53f', '1420388397');
INSERT INTO `wb_user` VALUES ('10', 'vvv', '4786f3282f04de5b5c7317c490c6d922', '1420388470');
INSERT INTO `wb_user` VALUES ('11', 'jjj', '2af54305f183778d87de0c70c591fae4', '1420388650');
INSERT INTO `wb_user` VALUES ('12', 'l', '2db95e8e1a9267b7a1188556b2013b33', '1420388848');
INSERT INTO `wb_user` VALUES ('13', 'yke', '5863a1caa79f4b40011084ad166f7185', '1420479467');
INSERT INTO `wb_user` VALUES ('14', 'yke108', '06e6f06a2214ca3aab241b2be746905e', '1420481968');
INSERT INTO `wb_user` VALUES ('15', 'czxiao', '25f9e794323b453885f5181f1b624d0b', '1422198445');
INSERT INTO `wb_user` VALUES ('16', '123', '202cb962ac59075b964b07152d234b70', '1422202009');
INSERT INTO `wb_user` VALUES ('17', 'kby', 'b0fa21c091d1885b7f79e561d628c5bc', '1422210986');
INSERT INTO `wb_user` VALUES ('18', 'keqiongyuan', '202cb962ac59075b964b07152d234b70', '1422214080');
INSERT INTO `wb_user` VALUES ('19', 'zhuli', '202cb962ac59075b964b07152d234b70', '1422273295');
INSERT INTO `wb_user` VALUES ('20', 'kms', '4951a865fa68d758b42a9cef50ae168a', '1422367464');
INSERT INTO `wb_user` VALUES ('21', 'july', '3785a4f12840727f9fc71676c104ac0d', '1422543254');
INSERT INTO `wb_user` VALUES ('22', 'qqq', '099b3b060154898840f0ebdfb46ec78f', '1422638346');
INSERT INTO `wb_user` VALUES ('23', 'qqqq', '099b3b060154898840f0ebdfb46ec78f', '1422638544');
INSERT INTO `wb_user` VALUES ('24', 'ww', '08a4415e9d594ff960030b921d42b91e', '1422884340');
INSERT INTO `wb_user` VALUES ('25', '柯琼远', '8d8f045ecd97e24c79116769c5fe330a', '1432406980');
INSERT INTO `wb_user` VALUES ('26', 'fdsafdsafdsa', '6b9260b1e02041a665d4e4a5117cfe16', '1438407531');
INSERT INTO `wb_user` VALUES ('27', 'fdsafdsa', '6b9260b1e02041a665d4e4a5117cfe16', '1438409926');
INSERT INTO `wb_user` VALUES ('28', 'fdsafdsafdsafdsa', '6b9260b1e02041a665d4e4a5117cfe16', '1444309984');
INSERT INTO `wb_user` VALUES ('29', 'yke109', '8d8f045ecd97e24c79116769c5fe330a', '1462330667');
INSERT INTO `wb_user` VALUES ('30', 'fdsa', 'fc2baa1a20b4d5190b122b383d7449fd', '1462334395');
INSERT INTO `wb_user` VALUES ('31', 'kejiajun', 'e10adc3949ba59abbe56e057f20f883e', '1481766466');

-- ----------------------------
-- Table structure for wiki_info
-- ----------------------------
DROP TABLE IF EXISTS `wiki_info`;
CREATE TABLE `wiki_info` (
  `art_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `summary` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `include_src` varchar(150) NOT NULL DEFAULT '',
  `extra_column_1` text NOT NULL,
  `extra_column_2` text NOT NULL,
  `cover_img_url` varchar(150) NOT NULL DEFAULT '',
  `cover_img_url2` varchar(150) NOT NULL DEFAULT '',
  `menu_id` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`art_id`),
  KEY `menu_id` (`menu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=283 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wiki_info
-- ----------------------------
INSERT INTO `wiki_info` VALUES ('12', '添加作品', '', 'SNS_SDK::execute(&quot;article.add_info&quot;, $param);', '$param[\'cat_id\']#int#分类ID，默认：1&lt;br /&gt;$param[\'user_id\']#int#用户ID（*）&lt;br /&gt;$param[\'type\']#int#作品类型，默认：1&lt;br /&gt;$param[\'title\']#string#作品标题（*）&lt;br /&gt;$param[\'content\']#string#作品内容（*）&lt;br /&gt;$param[\'cover_img_url\']#string#作品封面图（*）&lt;br /&gt;$param[\'location_id\']#int#地区ID，默认：0&lt;br /&gt;$param[\'custom_data\']#array#自定义数据&lt;br /&gt;$param[\'b_check_user\']#boolean#是否检测用户，默认：true', 'include \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '大于0#添加成功（作品ID）&lt;br /&gt; -1#参数错误&lt;br /&gt; -2#添加到索引表失败&lt;br /&gt; -3#添加到明细表失败&lt;br /&gt; -4#用户不存在&lt;br /&gt; -5#添加到作品统计表失败&lt;br /&gt; -6#添加到作品审核表失败', '', '', '', '27', '150002063', '0', '1', '1447652862', '1456720357');
INSERT INTO `wiki_info` VALUES ('13', '更新作品信息', '根据作品ID更新作品信息', 'SNS_SDK::execute(\'article.update_info\', $param);', '$param[\'art_id\']#int#作品ID（*）&lt;br /&gt;$param[\'data\']#array#具体待更新的数据，如下表（以下几项必须有一项）&lt;br /&gt;$param[\'data\'][\'title\']#string#作品标题&lt;br /&gt;$param[\'data\'][\'content\']#string#作品内容&lt;br /&gt;$param[\'data\'][\'cover_img_url\']#string#作品封面图', 'include \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '  1#更新成功&lt;br /&gt;-1#参数错误&lt;br /&gt;-2#更新索引表失败&lt;br /&gt;-3#更新明细表失败&lt;br /&gt;-4#没有可更新的数据&lt;br /&gt;-5#更新审核表失败', '', '', '', '27', '150002063', '0', '1', '1447653009', '1448608520');
INSERT INTO `wiki_info` VALUES ('43', '添加作品评论', '', 'SNS_SDK::execute(\'message.add_article_cmt\', $param);', '$param[\'art_id\']#int#作品ID（*）&lt;br /&gt;$param[\'user_id\']#int#用户ID（*）&lt;br /&gt;$param[\'to_cmt_id\']#int#评论ID（留言的回复需要传递）&lt;br /&gt;$param[\'nickname\']#string#评论人昵称&lt;br /&gt;$param[\'content\']#string#评论内容（*）', 'include \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '&gt;1#添加成功（留言ID）&lt;br /&gt;  0#添加失败&lt;br /&gt;-1#参数错误&lt;br /&gt;-2#创建话题失败&lt;br /&gt;-3#频道更新统计数据失败&lt;br /&gt;-4#话题更新统计数据失败&lt;br /&gt;-5#作品更新统计数据失败&lt;br /&gt;-6#作品不存在', '', '', '', '40', '150002063', '0', '1', '1447921028', '1452832227');
INSERT INTO `wiki_info` VALUES ('14', '删除作品（直接删除数据）', '', 'SNS_SDK::execute(\'article.del_info\', $param);', '$param[\'art_id\']#int#作品ID（*）', 'include \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '  1#删除成功&lt;br /&gt; -1#参数错误&lt;br /&gt; -2#删除索引表失败&lt;br /&gt; -3#删除明细表失败&lt;br /&gt; -4#删除统计表失败&lt;br /&gt; -5#添加作品回收站失败', '', '', '', '27', '150002063', '0', '1', '1447653113', '1456365714');
INSERT INTO `wiki_info` VALUES ('15', '根据作品ID获取作品信息', '', 'SNS_SDK::execute(\'article.get_info_by_art_id\', $param);', '$param[\'art_id\']#int#作品ID（*）&lt;br /&gt;$param[\'b_get_detail\']#boolean#是否获取作品详细信息，默认：true&lt;br /&gt;$param[\'b_use_cache\']#boolean#是否使用缓存，默认：true&lt;br /&gt;$param[\'status\']#int#作品状态，默认：1 （1：正常，2：删除）', 'include \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', 'array#作品信息数组', '', 'http://xmen.yueus.com/wiki/upload/20151117180141l7bxvJ.jpg', '', '27', '150002063', '0', '1', '1447653690', '1456369948');
INSERT INTO `wiki_info` VALUES ('16', '获取作品列表', '', 'SNS_SDK::execute(\'article.get_list\', $param);', 'where_str#string#查询条件，默认：\'\'&lt;br /&gt;limit	#string#获取数据限制，默认：\'0,10\'&lt;br /&gt;order_by#string#排序，默认：\'\'&lt;br /&gt;fields#string#字段筛选，默认：\'*\'&lt;br /&gt;b_get_detail#boolean#是否获取作品明细，默认：true&lt;br /&gt;b_select_count#boolean#是否查询数据量，默认：false', 'include \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '  int#查询作品数量&lt;br /&gt;  array#查询作品列表', '', 'http://xmen.yueus.com/wiki/upload/20151118170237kmU1Aq.png', '', '27', '150002063', '0', '1', '1447653827', '1448413703');
INSERT INTO `wiki_info` VALUES ('18', '更新作品统计数据', '', 'SNS_SDK::execute(\'article.update_stat_info\', $param);', '$param[\'art_id\']#int#作品ID（必须）&lt;br /&gt;$param[\'data\']#arrayt#具体待更新的数据，如下表（以下几项必须有一项）&lt;br /&gt;$param[\'data\'][\'like_count\']#int#点赞数&lt;br /&gt;$param[\'data\'][\'cmt_count\']#int#评论数&lt;br /&gt;$param[\'data\'][\'hit_count\']#int#分享数&lt;br /&gt;$param[\'data\'][\'last_like_time\']#int#最后转发时间&lt;br /&gt;$param[\'data\'][\'last_cmt_time\']#int#最后评论时间&lt;br /&gt;$param[\'data\'][\'last_hit_time\']#int#最后点赞时间', 'include \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', ' 1#更新成功&lt;br /&gt;  0#更新失败&lt;br /&gt;  -1#参数错误&lt;br /&gt;  -2#没有需要更新的数据', '', '', '', '27', '150002063', '0', '1', '1447654172', '1448271294');
INSERT INTO `wiki_info` VALUES ('20', '获取作品统计数据', '', 'SNS_SDK::execute(\'article.get_stat_info\', $param);', '$param[\'cat_id\']#int#作品ID（必须）', 'include \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', 'array#作品统计信息', '', 'http://xmen.yueus.com/wiki/upload/20151118170326xOglDX.png', '', '27', '150002063', '0', '1', '1447654349', '1448271183');
INSERT INTO `wiki_info` VALUES ('42', '更新用户信息', '', 'SNS_SDK::execute(\'member.update_user_info_by_user_id\', $param)', '$param[\'user_id\']#int#用户ID&lt;br /&gt;$param[\'b_check_user\']#boolean#是否检测用户，默认：true&lt;br /&gt;$param[\'options\']#array#待更新的用户信息&lt;br /&gt;$param[\'options\'][\'pwd\']#string#用户密码&lt;br /&gt;$param[\'options\'][\'nickname\']#string#昵称&lt;br /&gt;$param[\'options\'][\'sex\']#string#性别&lt;br /&gt;$param[\'options\'][\'birthday_year\']#string#出生年份&lt;br /&gt;$param[\'options\'][\'birthday_month\']#string#出生月份&lt;br /&gt;$param[\'options\'][\'birthday_day\']#string#出生日&lt;br /&gt;$param[\'options\'][\'location_id\']#string#地区ID&lt;br /&gt;$param[\'options\'][\'signature\']#string#签名&lt;br /&gt;$param[\'options\'][\'constellation\']#string#星座&lt;br /&gt;$param[\'options\'][\'interest\']#string#兴趣&lt;br /&gt;$param[\'options\'][\'jobs\']#string#工作&lt;br /&gt;$param[\'options\'][\'style\']#string#风格&lt;br /&gt;$param[\'options\'][\'blood_type\']#string#血型', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', ' 1#操作成功&lt;br /&gt;-1#参数缺失 &lt;br /&gt;-2#没有数据被更新&lt;br /&gt;-3#更新索引表失败&lt;br /&gt;-4#更新明细表失败&lt;br /&gt;-5#用户不存在', '', '', '', '31', '150002062', '0', '1', '1447841064', '1447841146');
INSERT INTO `wiki_info` VALUES ('22', '统计字段递增', '', 'SNS_SDK::execute(\'article.update_stat_info_increase\', $param);', '$options[\'art_id\']#int#作品ID（必须）&lt;br /&gt;$options[\'field\']#string#统计字段，多个字段逗号分隔（hit_count,cmt_count,like_count）（必须）', 'include \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '1#更新成功&lt;br /&gt;0#更新失败&lt;br /&gt;-1#参数错误&lt;br /&gt;-2#该作品统计不存在&lt;br /&gt;-3#没有需要更新的数据', '', '', '', '27', '150002063', '0', '1', '1447654580', '1448270914');
INSERT INTO `wiki_info` VALUES ('23', '统计字段递减', '', 'SNS_SDK::execute(\'article.update_stat_info_decrease\', $param);', '$options[\'art_id\']#int#作品ID（必须）&lt;br /&gt;$options[\'field\']#string#统计字段，多个字段逗号分隔（hit_count,cmt_count,like_count）（必须）', 'include \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '1#更新成功&lt;br /&gt;0#更新失败&lt;br /&gt;1#参数错误&lt;br /&gt;-2#该作品统计不存在&lt;br /&gt;-3#没有需要更新的数据', '', '', '', '27', '150002063', '0', '1', '1447654667', '1448270946');
INSERT INTO `wiki_info` VALUES ('41', '根据用户ID获取用户头像', '', 'SNS_SDK::execute(\'member.get_user_icon_by_user_id\', $param)', '$param[\'user_id\']#int#用户ID&lt;br /&gt;$param[\'size\']#int#头像尺寸，默认：165，支持的尺寸（468、165、100、64、32）&lt;br /&gt;$param[\'b_force_cache\']#boolean#是否强制刷新，默认：true（true: 精确到秒; false: 精确到日） ', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', 'string#用户头像URL', '', '', '', '31', '150002062', '0', '1', '1447839659', '1450263865');
INSERT INTO `wiki_info` VALUES ('29', '注册账号', '实现用户注册的功能', 'SNS_SDK::execute(\'member.create_account\', $param)', '$param[\'reg_type\']#string#注册方式，支持：name、mobile、email、partner（*）&lt;br /&gt;$param[\'options\'][\'user_name\']#string#登录账号（对应上面的reg_type）（*）&lt;br /&gt;$param[\'options\'][\'nickname\']#string#用户昵称，如：新用户&lt;br /&gt;$param[\'options\'][\'pwd\']#string#用户密码，明文，若不传递会生成随机密码&lt;br /&gt;$param[\'options\'][\'sex\']#string#性别，男 或 女&lt;br /&gt;$param[\'options\'][\'birthday_year\']#string#出生年份，如：1988&lt;br /&gt;$param[\'options\'][\'birthday_month\']#string#出生月份，如：1&lt;br /&gt;$param[\'options\'][\'birthday_day\']#string#出生日，如：1&lt;br /&gt;$param[\'options\'][\'email\']#string#电子邮件，如：12345668@qq.com&lt;br /&gt;$param[\'options\'][\'mobile\']#string#手机号码，如：18612345678&lt;br /&gt;$param[\'options\'][\'signature\']#string#签名，如：你好世界&lt;br /&gt;$param[\'options\'][\'constellation\']#string#星座，如：金牛座&lt;br /&gt;$param[\'options\'][\'interest\']#string#兴趣，如：读物,电影&lt;br /&gt;$param[\'options\'][\'jobs\']#string#职业，如：IT&lt;br /&gt;$param[\'options\'][\'style\']#string#风格，如：有钱就是任性&lt;br /&gt;$param[\'options\'][\'blood_type\']#string#血型，如：AB&lt;br /&gt;', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '&gt;0#操作成功（返回用户ID）&lt;br /&gt;-1#参数错误&lt;br /&gt;-2#帐号格式错误&lt;br /&gt;-3#用户已存在&lt;br /&gt;-4#生成ID失败&lt;br /&gt;-5#插入索引表失败&lt;br /&gt;-6#插入明细表失败&lt;br /&gt;-7#插入映射表失败', '', '', '', '31', '150002062', '1', '1', '1447661370', '1447836153');
INSERT INTO `wiki_info` VALUES ('40', '根据用户ID获取用户信息', '', 'SNS_SDK::execute(&quot;member.get_user_info_by_user_id&quot;, $param);', '$param[\'user_id\']#int#用户ID&lt;br /&gt;$param[\'b_get_detail\']#boolean#是否获取详细信息，默认：true&lt;br /&gt;$param[\'b_use_cache\']#boolean#是否使用缓存，默认：true', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', 'array#用户信息', '', '', '', '31', '150002062', '0', '1', '1447839469', '1447839509');
INSERT INTO `wiki_info` VALUES ('38', '删除用户一个作品（直接删除数据）', '根据用户ID和作品ID删除作品', 'SNS_SDK::execute(\'article.del_user_article\', $param);', '$param[\'art_id\']#int#作品ID（*）&lt;br /&gt;$param[\'user_id\']#int#用户ID（*）', 'include \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', ' 1#删除成功&lt;br /&gt;-1#参数错误&lt;br /&gt;-2#删除索引表失败&lt;br /&gt;-3#删除明细表失败&lt;br /&gt;-4#删除统计表失败&lt;br /&gt;-5#添加作品回收站失败', '', '', '', '27', '150002063', '0', '1', '1447816045', '1456371871');
INSERT INTO `wiki_info` VALUES ('44', '获取作品评论总数', '', 'SNS_SDK::execute(\'message.get_article_cmt_count\', $param);', '$param[\'art_id\']#int#作品ID（*）', 'include \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', 'int#留言数', '', '', '', '40', '150002063', '0', '1', '1447923164', '1452832242');
INSERT INTO `wiki_info` VALUES ('218', '根据圈子ID数组获取圈子列表信息', '', 'SNS_SDK::execute(\'quan.get_quan_list_by_quan_ids\', $param);', '$param[\'quan_ids\']#array#圈子ID数组&lt;br /&gt;$param[\'limit\']#string#获取数据限制，默认：\'0,20\'&lt;br /&gt;$param[\'b_select_count\']#boolean#是否查询数据量，默认：false&lt;br /&gt;$param[\'order_by\']#string#排序，默认以传进来的圈子ID数组的顺序&lt;br /&gt;$param[\'status\']#int# 0:只获取已屏蔽圈子  1：只获取正常圈子 2：获取所有圈子 默认：1', 'include \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', 'int#返回查询数量&lt;br /&gt;array#列表信息', '', '', '', '47', '150002137', '100', '1', '1453254335', '1453254335');
INSERT INTO `wiki_info` VALUES ('45', '获取作品评论列表', '', 'SNS_SDK::execute(\'message.get_article_cmt_list\', $param);', '$param[\'art_id\']#int#作品ID（*）&lt;br /&gt;$param[\'limit\']#string#获取数据限制，默认：\'0,10\'&lt;br /&gt;$param[\'order_by\']#string#排序，默认：\'\'&lt;br /&gt;$param[\'b_select_count\']#boolean#是否查询数据量，默认：false&lt;br /&gt;$param[\'b_select_all\']#boolean#是否查询全部，默认：true （false只查询一级评论）', 'include \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '  int#查询作品数量&lt;br /&gt;  array#查询作品列表', '', 'http://xmen.yueus.com/wiki/upload/20151120174441gqnkUg.png', '', '40', '150002063', '0', '1', '1447924810', '1452832256');
INSERT INTO `wiki_info` VALUES ('47', '获取客户端的数据', '通过通信协议获取客户端的数据', 'SNS_SDK::execute(\'protocol.get_input\', $param)', '$param[\'be_check_token\']#boolean#是否检测授权，默认：true&lt;br /&gt;$param[\'b_response\']#boolean#协议出错时，是否自动响应客户端，默认：true&lt;br /&gt;$param[\'b_oauth_response\']#boolean#授权异常时，是否自动响应客户端，默认：true', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', 'array#客户端的数据，详细请参考通信协议文档&lt;br /&gt;code = 100#数据正常&lt;br /&gt;code = -1#客户端的请求数据为空，当b_response = false&lt;br /&gt;code = -2#客户端的请求数据格式不正确，当b_response = false&lt;br /&gt;code = -3#客户端的请求数据校验码异常，当b_response = false&lt;br /&gt;code = -4#客户端的授权信息无效，当b_oauth_response = false', '', '', '', '42', '150002062', '0', '1', '1447932495', '1448618358');
INSERT INTO `wiki_info` VALUES ('46', 'X星球项目发送短信接口', '注意：该接口请不要滥用', 'SNS_SDK::execute(\'common.x_star_send_sms\', $param)', '$param[\'phone\']#string#手机号码（*）&lt;br /&gt;$param[\'message\']#string#短信内容（*）&lt;br /&gt;$param[\'user_id\']#int#用户ID&lt;br /&gt;$param[\'send_from\']#string#来源', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', ' 1#操作成功&lt;br /&gt; 0#操作失败&lt;br /&gt;-1#参数错误&lt;br /&gt;-2#没有对应的API', '', '', '', '41', '150002062', '0', '1', '1447926431', '1456990968');
INSERT INTO `wiki_info` VALUES ('48', '响应客户端请求', '返回数据给客户端', 'SNS_SDK::execute(\'protocol.output\', $param)', '$param[\'data\']#array#具体的数据数组，推荐如下格式&lt;br /&gt;$param[\'data\'][\'reg_code\']#int#数据层状态码&lt;br /&gt;$param[\'data\'][\'reg_msg\']#string#数据层提示信息&lt;br /&gt;$param[\'data\'][\'reg_data\']#mixed#数据层数据', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', 'json string#返回数据给客户端', '', '', '', '42', '150002062', '0', '1', '1447932674', '1447932737');
INSERT INTO `wiki_info` VALUES ('49', '获取用户的授权信息', '', 'SNS_SDK::execute(\'protocol.get_access_info\', $param)', '$param[\'user_id\']#int#用户ID（*）', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', 'array#授权信息', '', 'http://xmen.yueus.com/wiki/upload/20151119193431jgkEAd.jpg', '', '42', '150002062', '0', '1', '1447932837', '1447981844');
INSERT INTO `wiki_info` VALUES ('52', '检测账号密码是否正确', '', 'SNS_SDK::execute(\'member.check_account_pwd\', $param)', '$param[\'username\']#string#账号&lt;br /&gt;$param[\'password\']#string#密码&lt;br /&gt;$param[\'type\']#string#账号类型，支持：\'id\', \'name\', \'mobile\', \'email\'', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '大于0#用户ID&lt;br /&gt;等于0#账号密码无效', '', '', '', '31', '150002062', '0', '1', '1448004888', '1448016397');
INSERT INTO `wiki_info` VALUES ('50', '根据refreshToken刷新用户的授权信息', '刷新用户授权信息，必须传递 refresh_token，刷新后access_token会变，但是refresh_token不变', 'SNS_SDK::execute(\'protocol.refresh_access_by_refresh_token\', $param)', '$param[\'user_id\']#int#用户ID&lt;br /&gt;$param[\'refresh_token\']#string#刷新用的refreshToken', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', 'array#新的授权信息', '', 'http://xmen.yueus.com/wiki/upload/20151120090634ZIGCRv.jpg', '', '42', '150002062', '0', '1', '1447981525', '1447981782');
INSERT INTO `wiki_info` VALUES ('51', '强制刷新用户的授权信息', '调用该接口后，用户的access_token 和 refresh_token 都会变化，一般适用于当用户使用账号密码登录后为用户刷新一个有效的授权信息时使用', 'SNS_SDK::execute(\'protocol.force_refresh_access\', $param)', '$param[\'user_id\']#int#用户ID', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', 'array#新的授权信息', '', 'http://xmen.yueus.com/wiki/upload/20151120090954U84By1.jpg', '', '42', '150002062', '0', '1', '1447981772', '1447981794');
INSERT INTO `wiki_info` VALUES ('53', '删除作品评论', '根据用户ID和留言ID删除留言，目的是用户只能删除自己的留言', 'SNS_SDK::execute(\'message.del_article_cmt\', $param);', '$param[\'cmt_id\']#int#评论ID（*）&lt;br /&gt;$param[\'user_id\']#int#用户ID（*）', 'include \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '  1#删除成功&lt;br /&gt;  0#删除失败&lt;br /&gt;-1#参数错误&lt;br /&gt;-2#留言不存在&lt;br /&gt;-3#话题更新统计数据失败&lt;br /&gt;-4#频道更新统计数据失败', '', '', '', '40', '150002063', '0', '1', '1448012461', '1452832266');
INSERT INTO `wiki_info` VALUES ('54', '创建圈子信息', '', 'SNS_SDK::execute(\'quan.add_quan\', $param)', '$param[\'name\']#string#圈子名称（*）&lt;br /&gt;$param[\'content\']#string#圈子内容（*）&lt;br /&gt;$param[\'user_id\']#int#用户ID（*）&lt;br /&gt;$param[\'cat_id\']#int#圈子分类&lt;br /&gt;$param[\'quan_icon\']#string#圈子头像图片URL&lt;br /&gt;$param[\'cover_img_url\']#string#圈子封面图', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '大于0#圈子ID&lt;br /&gt;等于0#操作失败&lt;br /&gt;等于-1#参数错误', '', '', '', '47', '150002137', '100', '1', '1448277986', '1448960340');
INSERT INTO `wiki_info` VALUES ('55', '添加素材信息', '', 'SNS_SDK::execute(\'media.add_media\', $param);', '$param[\'media_url\']#string#媒体URL，例如图片的URL（*）&lt;br /&gt;$param[\'type\']#int#媒体类型，例如 1：图片&lt;br /&gt;$param[\'width\']#int#宽度，例如：600&lt;br /&gt;$param[\'height\']#int#高度，例如：300&lt;br /&gt;$param[\'user_id\']#int#用户ID&lt;br /&gt;$param[\'item_id\']#int#对象ID，例如：作品ID：123456（*）&lt;br /&gt;$param[\'channel_id\']#int#频道ID，例如：用户作品频道：1', 'include \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '1#添加成功&lt;br /&gt;0#添加失败&lt;br /&gt;-1#参数错误', '', '', '', '48', '150002063', '10', '1', '1448336120', '1448434973');
INSERT INTO `wiki_info` VALUES ('56', '添加相册', '', 'SNS_SDK::execute(\'media.add_album\', $param);', '$param[\'name\']#string#相册名称（*）&lt;br /&gt;$param[\'summary\']#string#相册简介&lt;br /&gt;$param[\'user_id\']#int#用户ID（*）&lt;br /&gt;$param[\'cover_img_url\']#string#相册封面图', 'include \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '&gt;1#添加成功（返回相册ID）&lt;br /&gt;0#添加失败&lt;br /&gt;-1#参数错误&lt;br /&gt;-2#用户相册已存在', '', '', '', '48', '150002063', '9', '1', '1448338740', '1448357864');
INSERT INTO `wiki_info` VALUES ('58', '更新圈子信息', '', 'SNS_SDK::execute(\'quan.update_quan_by_quan_id\', $param)', '$param[\'quan_id\']#int#圈子ID&lt;br /&gt;$param[\'data\'][\'name\']#string#圈子名称&lt;br /&gt;$param[\'data\'][\'content\']#string#圈子内容&lt;br /&gt;$param[\'data\'][\'user_id\']#string#用户ID&lt;br /&gt;$param[\'data\'][\'quan_icon\']#string#圈子头像图片URL&lt;br /&gt;$param[\'data\'][\'cover_img_url\']#string#圈子封面图片URL&lt;br /&gt;$param[\'data\'][\'status\']#int#圈子状态 1：正常 0：关闭 &lt;br /&gt;$param[\'data\'][\'user_count\']#int#圈子成员总数&lt;br /&gt;$param[\'data\'][\'last_join_user_id\']#int#最新加入圈子成员ID&lt;br /&gt;$param[\'data\'][\'last_join_time\']#int#最新加入圈子时间', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '1#更新成功&lt;br /&gt;0#更新失败&lt;br /&gt;-1#参数错误&lt;br /&gt;-2#无更新数据', '', '', '', '47', '150002137', '100', '1', '1448347103', '1452502925');
INSERT INTO `wiki_info` VALUES ('59', '获取圈子列表', '', 'SNS_SDK::execute(\'quan.get_all_quans\')', '$param[\'limit\']#string#获取数据限制，默认：\'0,20\'&lt;br /&gt;$param[\'b_select_count\']#boolean#是否查询数据量，默认：false&lt;br /&gt;$param[\'order_by\']#string#排序，默认 add_time DESC&lt;br /&gt;$param[\'status\']#int# 0:只获取已关闭圈子  1：只获取已开启圈子 2：获取所有圈子 默认：1', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', 'int#查询圈子数量&lt;br /&gt;array#查询圈子列表', '', '', '', '47', '150002137', '100', '1', '1448348024', '1448613703');
INSERT INTO `wiki_info` VALUES ('60', '根据会员ID 获取会员加入的圈子列表', '', 'SNS_SDK::execute(\'quan.get_all_quans_by_user_id\', $param);', '$param[\'user_id\']#int#会员ID&lt;br /&gt;$param[\'limit\']#string#获取数据限制，默认：\'0,20\'&lt;br /&gt;$param[\'b_select_count\']#boolean#是否查询数据量，默认：false&lt;br /&gt;$param[\'order_by\']#string#排序，默认 add_time DESC&lt;br /&gt;$param[\'is_quit\']#int# 0:只获取未退出的圈子  1：只获取已退出的圈子 2：获取所有圈子 默认：0', 'include \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', 'int#查询圈子数量&lt;br /&gt;array#查询圈子列表', '', '', '', '47', '150002137', '100', '1', '1448349948', '1449738423');
INSERT INTO `wiki_info` VALUES ('61', '加入圈子', '', 'SNS_SDK::execute(\'quan.join_quan\', $param);', '$param[\'user_id\']#int#用户ID&lt;br /&gt;$param[\'quan_id\']#int#圈子ID', 'include \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '1#添加成功&lt;br /&gt;0#添加失败&lt;br /&gt;-1#参数错误&lt;br /&gt;-2#已加入圈子', '', '', '', '47', '150002137', '100', '1', '1448350411', '1448613711');
INSERT INTO `wiki_info` VALUES ('62', '获取素材信息', '参数media_hash和media_url必须存在一个，media_hash优先', 'SNS_SDK::execute(\'media.get_media_info\', $param);', '$param[\'media_hash\']#string#媒体链接哈稀&lt;br /&gt;$param[\'media_url\']#string#媒体链接&lt;br /&gt;$param[\'user_id\']#int#用户ID（*）', 'include \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', 'array#素材信息', '', '', '', '48', '150002063', '0', '1', '1448353410', '1448440341');
INSERT INTO `wiki_info` VALUES ('63', '更新相册信息', '', 'SNS_SDK::execute(\'media.update_album_info\', $param);', '$param[\'album_id\']#int#相册ID（*）&lt;br /&gt;$param[\'data\']#array#具体待更新的数据，如下表（以下几项必须有一项）&lt;br /&gt;$param[\'data\'][\'name\']#string#相册名称&lt;br /&gt;$param[\'data\'][\'summary\']#string#相册简介&lt;br /&gt;$param[\'data\'][\'cover_img_url\']#string#相册封面图&lt;br /&gt;$param[\'data\'][\'photo_count\']#int#相册中的图片数量&lt;br /&gt;$param[\'data\'][\'sort_order\']#int#相册排序', 'include \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '1#更新成功&lt;br /&gt;0#更新失败&lt;br /&gt;-1#参数错误', '', '', '', '48', '150002063', '8', '1', '1448353622', '1449202382');
INSERT INTO `wiki_info` VALUES ('64', '添加图片到相册', '', 'SNS_SDK::execute(\'media.add_album_photo\', $param);', '$param[\'media_url\']#string#媒体素材URL（*）&lt;br /&gt;$param[\'album_id\']#int#相册ID（*）&lt;br /&gt;$param[\'user_id\']#int#用户ID（*）&lt;br /&gt;$param[\'sort_order\']#int#排序 倒序，默认：1（*）', 'include \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '1#添加成功&lt;br /&gt;0#添加失败&lt;br /&gt;-1#参数错误&lt;br /&gt;-2#添加到素材库失败&lt;br /&gt;-3#相册不存在&lt;br /&gt;-4#更新相册相片数失败', '', '', '', '48', '150002063', '6', '1', '1448353781', '1456302477');
INSERT INTO `wiki_info` VALUES ('65', '从相册中删除图片的信息', '', 'SNS_SDK::execute(\'media.del_album_photo\', $param);', '$param[\'media_url\']#string#媒体素材URL（*）&lt;br /&gt;$param[\'album_id\']#int#相册ID（*）&lt;br /&gt;$param[\'user_id\']#int#用户ID（*）', 'include \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '1#删除成功&lt;br /&gt;0#删除失败&lt;br /&gt;-1#参数错误&lt;br /&gt;-2#相册不存在&lt;br /&gt;-3#更新相册相片数失败', '', '', '', '48', '150002063', '5', '1', '1448353882', '1453793737');
INSERT INTO `wiki_info` VALUES ('66', '获取用户相册中的图片列表', '', 'SNS_SDK::execute(\'media.get_user_album_photo_list\', $param);', '$param[\'user_id\']#int#用户ID（*）&lt;br /&gt;$param[\'album_id\']#int#相册ID（*）&lt;br /&gt;$param[\'b_select_count\']#boolean#是否获取数量，默认：false', 'include \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', 'int#查询数量&lt;br /&gt;array#查询列表', '', 'http://xmen.yueus.com/wiki/upload/20151124174724b0rjaZ.png', '', '48', '150002063', '4', '1', '1448354130', '1448358444');
INSERT INTO `wiki_info` VALUES ('67', '获取手机短信验证码', '', 'http://jk.poco.cn/api/v1/get_sms_verify_code_api.php', 'phone#string#手机号码&lt;br /&gt;zone_num#int#区号，默认：86', 'API调用，支持GET或POST', 'ret_code =  0#操作成功&lt;br /&gt;ret_code = -1#获取验证码失败&lt;br /&gt;ret_code = -2#发送短信失败&lt;br /&gt;ret_code = -3#手机号位数不正确&lt;br /&gt;ret_code = -4#手机号格式不正确', '', 'http://xmen.yueus.com/wiki/upload/201511241703346OydPT.jpg', '', '50', '150002104', '0', '1', '1448355789', '1451293939');
INSERT INTO `wiki_info` VALUES ('68', '根据相册ID获取相册信息', '', 'SNS_SDK::execute(\'media.get_album_info\', $param);', '$param[\'album_id\']#int#相册ID（*）', 'include \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', 'array#相册信息', '', 'http://xmen.yueus.com/wiki/upload/20151124174210dWM7p6.png', '', '48', '150002063', '0', '1', '1448357628', '1448586647');
INSERT INTO `wiki_info` VALUES ('69', '根据相册NAME获取相册信息', '', 'SNS_SDK::execute(\'media.get_album_info_by_name\', $param);', '$param[\'name\']#int#相册名称（*）&lt;br /&gt;$param[\'user_id\']#int#用户ID（*）', 'include \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', 'array#相册信息', '', 'http://xmen.yueus.com/wiki/upload/201511241741470AnrLW.png', '', '48', '150002063', '7', '1', '1448357792', '1448361905');
INSERT INTO `wiki_info` VALUES ('70', '校验手机验证码', '', 'http://jk.poco.cn/api/v1/check_sms_verify_code_api.php', 'zone_num#int#区号，默认：86&lt;br /&gt;phone#string#手机号码&lt;br /&gt;verify_code#string#校验码', 'API调用，支持GET或POST，使用通信协议', 'ret_code =  0#操作成功&lt;br /&gt;ret_code = -1#操作失败&lt;br /&gt;ret_data[\'check_result\']#boolean =&gt; true，校验成功；false，校验失败&lt;br /&gt;user_id#用户ID，可能为空', '', 'http://xmen.yueus.com/wiki/upload/20151124173713Gbz3p7.jpg', '', '50', '150002104', '0', '1', '1448357806', '1449729092');
INSERT INTO `wiki_info` VALUES ('78', '根据圈子ID获取圈子帖子列表', '', 'SNS_SDK::execute(\'article.get_thread_list_by_quan_id\', $param);', '$param[\'quan_id\']#int#圈子ID（*）&lt;br /&gt;$param[\'fields\']#array#获取字段控制，默认：获取所有字段&lt;br /&gt;$param[\'limit\']#string#获取数据限制，默认：\'0,20\'&lt;br /&gt;$param[\'b_select_count\']#boolean#是否查询数据量，默认：false&lt;br /&gt;$param[\'b_get_follow\']#boolean#是否返回跟帖，默认：false&lt;br /&gt;$param[\'order_by\']#string#排序，默认 is_top DESC,add_time DESC&lt;br /&gt;$param[\'status\']#int# 0:只获取已屏蔽帖子  1：只获取正常帖子 2：获取所有帖子 默认：1', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\'', 'int#查询帖子数量&lt;br /&gt;array#查询帖子列表', '', '', '', '47', '150002137', '80', '1', '1448437075', '1452146549');
INSERT INTO `wiki_info` VALUES ('71', '通过手机号注册账号', '', 'http://jk.poco.cn/api/v1/create_account_by_mobile_api.php', 'zone_num#int#区号，默认：86&lt;br /&gt;phone#string#手机号码&lt;br /&gt;verify_code#string#短信校验码&lt;br /&gt;b_check_verify_code#boolean#是否检测短信验证码，默认：true', 'API调用，支持GET或POST，使用通信协议', 'ret_code =  0#操作成功&lt;br /&gt;ret_code = -1#参数错误&lt;br /&gt;ret_code = -2#账号密码错误&lt;br /&gt;ret_code = -3#校验验证码失败&lt;br /&gt;ret_code = -4#验证码不正确&lt;br /&gt;ret_code = -5#手机号已被使用&lt;br /&gt;ret_code = -6#创建账号失败&lt;br /&gt;ret_code = -7#手机号位数不正确&lt;br /&gt;ret_code = -8#手机号格式不正确', '', 'http://xmen.yueus.com/wiki/upload/2015112618343785Mj91.jpg', '', '50', '150002104', '0', '1', '1448358848', '1451293981');
INSERT INTO `wiki_info` VALUES ('72', '根据多个作品ID获取作品统计数据列表', '', 'SNS_SDK::execute(\'article.get_stat_list_by_art_id_arr\', $param);', '$param[\'art_id_arr\']#array#作品ID数组（*）&lt;br /&gt;$param[\'limit\']#string#获取数据限制，默认：\'0,10\'&lt;br /&gt;$param[\'order_by\']#string#排序，默认：\'\'&lt;br /&gt;$param[\'fields\']#string#字段筛选，默认：\'*\'&lt;br /&gt;$param[\'b_select_count\']#boolean#是否查询数据量，默认：false', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', 'int#查询数据量&lt;br /&gt;array#查询列表', '', 'http://xmen.yueus.com/wiki/upload/20151124182818GJHVBG.png', '', '27', '150002063', '0', '1', '1448360687', '1456372335');
INSERT INTO `wiki_info` VALUES ('73', '获取作品统计数据列表', '', 'SNS_SDK::execute(\'article.get_stat_list\', $param);', '$param[\'where_str\']#array#查询条件，默认：\'\'&lt;br /&gt;$param[\'limit\']#string#获取数据限制，默认：\'0,10\'&lt;br /&gt;$param[\'order_by\']#string#排序，默认：\'\'&lt;br /&gt;$param[\'fields\']#string#字段筛选，默认：\'*\'&lt;br /&gt;$param[\'b_select_count\']#boolean#是否查询数据量，默认：false', 'include \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', 'int#查询数据量&lt;br /&gt;array#查询列表', '', '', '', '27', '150002063', '0', '1', '1448362191', '1448440917');
INSERT INTO `wiki_info` VALUES ('74', '根据一个user_id查询作品列表', '', 'SNS_SDK::execute(&quot;article.get_article_list_by_user_id&quot;, $data);', '$param[\'user_id\']#int#用户ID（*）&lt;br /&gt;$param[\'status\']#int#状态，默认：1（1：正常，0：删除）&lt;br /&gt;$param[\'limit\']#string#获取数据限制，默认：\'0,10\'&lt;br /&gt;$param[\'order_by\']#string#排序，默认：\'\'&lt;br /&gt;$param[\'fields\']#string#字段筛选，默认：\'*\'&lt;br /&gt;$param[\'b_select_count\']#boolean#是否查询数据量，默认：false', 'include \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '  int#查询作品数量&lt;br /&gt;  array#查询作品列表', '', '', '', '27', '150002063', '0', '1', '1448414017', '1456372137');
INSERT INTO `wiki_info` VALUES ('75', '退出圈子', '', 'SNS_SDK::execute(\'quan.quit_quan\', $param)', '$param[\'quan_id\']#int#圈子ID&lt;br /&gt;$param[\'user_id\']#int#用户ID', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '1#退出成功&lt;br /&gt;0#退出失败&lt;br /&gt;-1#参数错误', '', '', '', '47', '150002137', '100', '1', '1448416221', '1448613727');
INSERT INTO `wiki_info` VALUES ('76', '根据多个user_id查询作品列表', '', 'SNS_SDK::execute(\'article.get_list_by_user_ids\', $param);', '$param[\'user_ids\']#array#作品ID数组（*）&lt;br /&gt;$param[\'last_min_id\']#int#若传递此值，art_id &lt; last_min_id&lt;br /&gt;$param[\'since_id\']#int#若传递此值，art_id &gt; since_id&lt;br /&gt;$param[\'max_id\']#int#若传递此值，art_id &lt;= max_id&lt;br /&gt;$param[\'status\']#int#状态，默认：1（1：正常，0：删除）&lt;br /&gt;$param[\'limit	\']#string#获取数据限制，默认：\'0,10\'&lt;br /&gt;$param[\'order_by\']#string#排序，默认：\'add_time DESC\'&lt;br /&gt;$param[\'b_select_count\']#boolean#是否查询数据量，默认：false&lt;br /&gt;$param[\'b_get_detail\']#boolean#是否查询明细，默认为true', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', 'int#查询数据量&lt;br /&gt;array#查询列表', '', '', '', '27', '150002063', '0', '1', '1448418518', '1456372085');
INSERT INTO `wiki_info` VALUES ('77', '根据圈子ID获取圈子成员列表', '', 'SNS_SDK::execute(\'quan.get_member_list_by_quan_id\',$param)', '$param[\'quan_id\']#int#圈子ID（*）&lt;br /&gt;$param[\'limit\']#string#获取数据限制，默认：\'0,20\'&lt;br /&gt;$param[\'b_select_count\']#boolean#是否查询数据量，默认：false&lt;br /&gt;$param[\'order_by\']#string#排序，默认 add_time DESC&lt;br /&gt;$param[\'status\']#int# 0:只获取已被屏蔽成员  1：只获取正常成员 2：获取所有圈子 默认：1&lt;br /&gt;$param[\'is_quit\']#int# 0:只获取未退出圈子的成员  1：只获取已退出圈子的成员 2：获取所有圈子 默认：0', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', 'int#查询成员数量&lt;br /&gt;array#查询成员列表', '', '', '', '47', '150002137', '90', '1', '1448419297', '1449105594');
INSERT INTO `wiki_info` VALUES ('79', '获取帖子详细', '', 'SNS_SDK::execute(\'quan.get_thread_info\',$param)', '$param[\'thread_id\']#int#帖子ID（*）&lt;br /&gt;$param[\'status\']#int# 是否返回已被屏蔽了的帖子，0：返回， 1：不返回。', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', 'boolean# false 获取失败&lt;br /&gt;array#帖子信息', '帖子表字段说明&lt;br /&gt;\'thread_id\',            // 帖子ID（主键，自增）&lt;br /&gt;\'quan_id\',              // 圈子ID&lt;br /&gt;\'user_id\',              // 发帖人ID&lt;br /&gt;\'status\',               // 状态（0：屏蔽，1：正常）&lt;br /&gt;\'type\',                 // 类型（1：普通；2：投票；3：活动；4：征集）&lt;br /&gt;\'last_post_time\',       // 最后回复时间&lt;br /&gt;\'last_post_user_id\',    // 最后回复用户ID&lt;br /&gt;\'add_time\',             // 添加时间&lt;br /&gt;\'update_time\',          // 更新时间&lt;br /&gt;\'title\',                // 帖子标题&lt;br /&gt;\'summary\',              // 描述&lt;br /&gt;\'content\',              // 内容&lt;br /&gt;\'custom_data\',          // 自定义数据&lt;br /&gt;\'post_count\',          // 回复数&lt;br /&gt;\'like_count\',          // 点赞数&lt;br /&gt;\'view_count\',          // 浏览量&lt;br /&gt;\'collect_count\',          // 收藏量&lt;br /&gt;\'follow_count\',          // 跟帖数&lt;br /&gt;\'is_top\',                  // 是否置顶&lt;br /&gt;&lt;h2&gt;如果为投票贴，将出现以下字段&lt;/h2&gt;&lt;br /&gt;\'vote_info[\'vote_count\']\'     //帖子总投票数&lt;br /&gt;\'vote_info[\'max_choice\']\'     //最多可投数量&lt;br /&gt;\'vote_info[\'begin_time\']\'     //开始时间&lt;br /&gt;\'vote_info[\'end_time\']\'     //结束时间&lt;br /&gt;\'vote_item\'                      //各个投票项投票情况', '', '', '47', '150002137', '80', '1', '1448437220', '1453791027');
INSERT INTO `wiki_info` VALUES ('80', '关闭圈子', '', 'SNS_SDK::execute(\'quan.stop_quan\',$param)', '$param[\'quan_id\']#int#圈子ID', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '1#操作成功&lt;br /&gt;0#操作失败&lt;br /&gt;-1#参数错误', '', '', '', '47', '150002137', '100', '1', '1448437961', '1448613740');
INSERT INTO `wiki_info` VALUES ('81', '开启圈子', '', 'SNS_SDK::execute(\'quan.start_quan\',$param)', '$param[\'quan_id\']#int#圈子ID', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '1#操作成功&lt;br /&gt;0#操作失败&lt;br /&gt;-1#参数错误', '', '', '', '47', '150002137', '100', '1', '1448438221', '1448613750');
INSERT INTO `wiki_info` VALUES ('82', '获取圈子成员信息', '如果没有加入圈子返回 false，可用于判断会员是否已加入圈子', 'SNS_SDK::execute(\'quan.get_member_info\',$param)', '$param[\'quan_id\']#int#圈子ID&lt;br /&gt;$param[\'user_id\']#int#用户ID', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', 'false#未加入圈子&lt;br /&gt;array#成员信息', '圈子成员表字段说明&lt;br /&gt;\'user_id\',             // int(10)  [key]  成员ID&lt;br /&gt;\'quan_id\',             // int(10) 圈子ID&lt;br /&gt;\'status\',              // tinyint(1)  状态，0：屏蔽；1：正常&lt;br /&gt;\'is_quit\',             // tinyint(1), 是否退出，0：否；1：是&lt;br /&gt;\'is_manager\',     // tinyint(1), 是否是圈子管理员，0：否；1：是&lt;br /&gt;\'thread_count\',        // smallint(5)，发帖数量&lt;br /&gt;\'last_thread_id\',      // int(10) 最后发帖的ID&lt;br /&gt;\'last_thread_time\',      // int(10) 最后发帖的时间&lt;br /&gt;\'add_time\',            // int(10) 添加时间&lt;br /&gt;\'update_time\',         // int(10) 更新时间', '', '', '47', '150002137', '90', '1', '1448438687', '1451881379');
INSERT INTO `wiki_info` VALUES ('83', '发帖', '', 'SNS_SDK::execute(\'quan.pub_thread\', $param);', '$param[\'quan_id\']#int#圈子ID（*）&lt;br /&gt;$param[\'user_id\']#int#用户ID（*）&lt;br /&gt;$param[\'title\']#string#帖子标题（*）&lt;br /&gt;$param[\'content\']#string#帖子内容（*）&lt;br /&gt;$param[\'type\']#int#帖子类型 1：普通；2：投票；3：活动；4：征集&lt;br /&gt;$param[\'custom_data\']#array#自定义数据&lt;br /&gt;$param[\'vote_options\']#array#投票贴相关设置,仅当设置 type=2 即帖子为投票贴时需要传。&lt;br /&gt;$param[\'vote_options\'][\'max_choice\']#int#投票最多可选多少项。默认：1&lt;br /&gt;$param[\'vote_options\'][\'begin_time\']#int#开始时间。默认：time()&lt;br /&gt;$param[\'vote_options\'][\'end_time\']#int#结束时间。默认: time() + 3600*24*30&lt;br /&gt;$param[\'vote_item\']#array#投票项。eg: array(array(\'title\'=&gt;\'洗衣机\'),array(\'title\'=&gt;\'电饭锅\'),array(\'title\'=&gt;\'热水器\'))。数组结构不对或者数组为空返回 -1，参数错误。', 'include \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', ' &gt; 0 #添加成功，返回帖子ID&lt;br /&gt;0#添加失败&lt;br /&gt;-1#参数错误。参数错误可能原因：1、圈子不存在，2、圈子成员不存在、3、帖子类型不在（1、2、3、4）之内，4、标题title或者内容content为空，5、是跟帖，但是被跟的帖子不存在，6、是跟帖，但是帖子类型不是普通帖，7、是投票贴，但是投票项为空或者投票项数组格式不对，也就是字段vote_item&lt;br /&gt;-2#发帖过于频繁，当前是发帖频率控制在1分钟。', '', '', '', '47', '150002137', '80', '1', '1448439501', '1454552079');
INSERT INTO `wiki_info` VALUES ('84', '更新用户用于登录的手机号', '', 'http://jk.poco.cn/api/v1/change_bind_phone_api.php', 'user_id#int#用户ID&lt;br /&gt;old_zone_num#int#旧手机区号，默认：86&lt;br /&gt;old_phone#string#旧的手机号码&lt;br /&gt;new_zone_num#int#新手机区号，默认：86&lt;br /&gt;new_phone#string#新的手机号码&lt;br /&gt;b_check_mobile_old#boolean#是否检测旧的手机号，默认：true', 'API调用，支持GET或POST，使用通信协议', 'ret_code =  0#修改成功&lt;br /&gt;ret_code = -1#参数错误&lt;br /&gt;ret_code = -2#手机号错误&lt;br /&gt;ret_code = -3#用户不存在&lt;br /&gt;ret_code = -4#旧手机号错误&lt;br /&gt;ret_code = -5#新手机号已被使用&lt;br /&gt;ret_code = -6#更换手机号失败&lt;br /&gt;ret_code = -7#手机号位数不正确&lt;br /&gt;ret_code = -8#手机号格式不正确', '', '', '', '50', '150002104', '0', '1', '1448444472', '1451293961');
INSERT INTO `wiki_info` VALUES ('85', '更新用户的密码', '', 'http://jk.poco.cn/api/v1/change_password_api.php', 'user_id#int#用户ID&lt;br /&gt;new_pwd#string#新的密码（明文）&lt;br /&gt;confirm_pwd#string#确认密码（明文）&lt;br /&gt;old_pwd#string#旧的密码（明文），没有可以不传&lt;br /&gt;b_check_old_pwd#boolean#是否检测旧的密码，默认：false', 'API调用，支持GET或POST，使用通信协议', 'ret_code =  0#修改成功&lt;br /&gt;ret_code = -1#参数错误&lt;br /&gt;ret_code = -2#新密码的格式错误&lt;br /&gt;ret_code = -3#用户为空&lt;br /&gt;ret_code = -4#旧密码错误&lt;br /&gt;ret_code = -5#操作失败&lt;br /&gt;ret_code = -6#两次输入的密码不一致', '', '', '', '50', '150002104', '0', '1', '1448448331', '1449028739');
INSERT INTO `wiki_info` VALUES ('86', '关注好友', '', 'SNS_SDK::execute(&quot;friend.follow_friend&quot;, $param);', 'app_name#string#应用名（*）&lt;br /&gt;user_id#int#用户ID（*）&lt;br /&gt;friend_id#int#好友ID（*）&lt;br /&gt;friend_group_id#int#好友分组ID&lt;br /&gt;sort_order#int#分组排序，[-128~127]&lt;br /&gt;friendship_level#int#关系等级', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '1#操作成功&lt;br /&gt;0#操作失败&lt;br /&gt;-1#参数缺失&lt;br /&gt;-2#已经关注过&lt;br /&gt;-3#不能关注自己', '', '', '', '52', '150002104', '0', '1', '1448501714', '1453685788');
INSERT INTO `wiki_info` VALUES ('87', '取消关注好友', '', 'SNS_SDK::execute(&quot;friend.unfollow_friend&quot;, $param);', 'app_name#string#应用名（*）&lt;br /&gt;user_id#int#用户ID（*）&lt;br /&gt;friend_id#int#好友ID（*）', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '1#操作成功&lt;br /&gt;0#操作失败&lt;br /&gt;-1#参数缺失&lt;br /&gt;-2#已经关注过', '', '', '', '52', '150002104', '0', '1', '1448501858', '1449826947');
INSERT INTO `wiki_info` VALUES ('88', '创建分组', '', 'SNS_SDK::execute(&quot;friend.create_group&quot;, $param);', 'app_name#string#应用名（*）&lt;br /&gt;user_id#int#用户ID（*）&lt;br /&gt;friend_group_name#string#分组名称（*）&lt;br /&gt;friend_count#int#分组人数', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '&gt;0#操作成功，返回friend_group_id&lt;br /&gt;0#操作失败&lt;br /&gt;-1#参数缺失&lt;br /&gt;-2#分组名称已存在', '', '', '', '52', '150002104', '0', '1', '1448501950', '1449826958');
INSERT INTO `wiki_info` VALUES ('89', '修改分组名称', '', 'SNS_SDK::execute(&quot;friend.edit_group_name&quot;, $param);', 'app_name#string#应用名（*）&lt;br /&gt;user_id#int#用户ID（*）&lt;br /&gt;friend_group_id#int#分组ID（*）&lt;br /&gt;friend_group_name#string#分组名称（*）', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '1#操作成功&lt;br /&gt;0#操作失败&lt;br /&gt;-1#参数缺失&lt;br /&gt;-2#分组名称已存在', '', '', '', '52', '150002104', '0', '1', '1448502112', '1449826973');
INSERT INTO `wiki_info` VALUES ('90', '更新分组的好友数量', '', 'SNS_SDK::execute(&quot;friend.update_group_friend_count&quot;, $param);', 'app_name#string#应用名（*）&lt;br /&gt;user_id#int#用户ID（*）&lt;br /&gt;friend_group_id#int#分组ID（*）&lt;br /&gt;type#int#更新类型，默认：1；1-重新统计，2-传入数据更新，3-加减更新&lt;br /&gt;friend_count#int#好友数量，type = 2 时有效&lt;br /&gt;decrease#int#增减数量，type = 3 时有效', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '≥0#操作成功，返回friend_count&lt;br /&gt;-1#参数缺失&lt;br /&gt;-2#操作失败', '', '', '', '52', '150002104', '0', '1', '1448502206', '1449826984');
INSERT INTO `wiki_info` VALUES ('91', '更新好友的分组', '调用此接口后会更新目标分组的好友数量，但不会更新原分组的好友数量，需调用update_group_friend_count接口更新。', 'SNS_SDK::execute(&quot;friend.update_friend_belone_group&quot;, $param);', 'app_name#string#应用名（*）&lt;br /&gt;user_id#int#用户ID（*）&lt;br /&gt;friend_id_array#array#好友ID数组（*）&lt;br /&gt;friend_group_id#int#好友分组ID（*）', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '1#操作成功&lt;br /&gt;0#操作失败&lt;br /&gt;-1#参数缺失&lt;br /&gt;-2#分组不存在', '', '', '', '52', '150002104', '0', '1', '1448502506', '1449826999');
INSERT INTO `wiki_info` VALUES ('92', '更新好友在某个分组下的排序', '', 'SNS_SDK::execute(&quot;friend.update_friend_sort_order&quot;, $param);', 'app_name#string#应用名（*）&lt;br /&gt;user_id#int#用户ID（*）&lt;br /&gt;friend_id#int#好友ID（*）&lt;br /&gt;sort_order#int#排序，[-128~127]（*）', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '1#操作成功&lt;br /&gt;0#操作失败&lt;br /&gt;-1#参数缺失&lt;br /&gt;-2#sort_order超出界限', '', '', '', '52', '150002104', '0', '1', '1448502619', '1449827011');
INSERT INTO `wiki_info` VALUES ('93', '获取我关注的好友列表（ID列表）', '', 'SNS_SDK::execute(&quot;friend.get_user_friend_list&quot;, $param);', 'app_name#string#应用名（*）&lt;br /&gt;user_id#int#用户ID（*）&lt;br /&gt;limit#string#好友ID，默认：0,20&lt;br /&gt;orderby#string#排序，默认：add_time DESC&lt;br /&gt;b_select_count#bool#获取总的数量，默认：false', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '-1#参数缺失', '', '', '', '52', '150002104', '0', '1', '1448502708', '1456298206');
INSERT INTO `wiki_info` VALUES ('94', '获取我的粉丝列表（ID列表）', '', 'SNS_SDK::execute(&quot;friend.get_user_fans_list&quot;, $param);', 'app_name#string#应用名（*）&lt;br /&gt;user_id#int#用户ID（*）&lt;br /&gt;limit#string#好友ID，默认：0,20&lt;br /&gt;orderby#string#排序，默认：add_time DESC，仅支持 add_time DESC 和 add_time ASC&lt;br /&gt;b_select_count#bool#获取总的数量，默认：false，获取到的为数据的数量，但不一定是真实的粉丝数量，其最大值为1000，获取准确数量请用[get_user_stat_info]接口', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '-1#参数缺失', '', '', '', '52', '150002104', '0', '1', '1448502878', '1456298217');
INSERT INTO `wiki_info` VALUES ('95', '检测好友关系', '', 'SNS_SDK::execute(&quot;friend.check_is_friend&quot;, $param);', 'app_name#string#应用名（*）&lt;br /&gt;user_id#int#用户ID（*）&lt;br /&gt;friend_id_array#array#好友ID数组（*）', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '-1#参数缺失', '', '', '', '52', '150002104', '0', '1', '1448502986', '1449827044');
INSERT INTO `wiki_info` VALUES ('96', '检测粉丝关系', '', 'SNS_SDK::execute(&quot;friend.check_is_fan&quot;, $param);', 'app_name#string#应用名（*）&lt;br /&gt;user_id#int#用户ID（*）&lt;br /&gt;fans_id_array#array#好友ID数组（*）', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '-1#参数缺失', '', '', '', '52', '150002104', '0', '1', '1448503051', '1449827060');
INSERT INTO `wiki_info` VALUES ('97', '删除好友分组', '', 'SNS_SDK::execute(&quot;friend.del_user_friend_group&quot;, $param);', 'app_name#string#应用名（*）&lt;br /&gt;user_id#int#用户ID（*）&lt;br /&gt;friend_group_id#int#好友分组ID（*）', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '1#操作成功&lt;br /&gt;0#操作失败&lt;br /&gt;-1#参数缺失&lt;br /&gt;-2#分组不存在', '', '', '', '52', '150002104', '0', '1', '1448503104', '1449827071');
INSERT INTO `wiki_info` VALUES ('98', '获取用户关注和粉丝数据', '', 'SNS_SDK::execute(&quot;friend.get_user_stat_info&quot;, $param);', 'app_name#string#应用名（*）&lt;br /&gt;user_id#int#用户ID（*）', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '-1#参数缺失', '', 'http://xmen.yueus.com/wiki/upload/20160225120850aJBsCD.png', '', '52', '150002104', '0', '1', '1448503309', '1456373330');
INSERT INTO `wiki_info` VALUES ('99', '重新统计关注数据', '此接口会遍历所有关注数据表，仅用于数据出错时修复，请勿频繁调用', 'SNS_SDK::execute(&quot;friend.recount_follow_stat&quot;, $param);', 'app_name#string#应用名（*）&lt;br /&gt;type#string#类型，[all:重新统计所有用户][single:重新统计指定用户]（*）&lt;br /&gt;user_id#int#用户ID，type为single时必填', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '&gt;0#更新数量&lt;br /&gt;-1#参数缺失', '', '', '', '52', '150002104', '0', '1', '1448503417', '1449827096');
INSERT INTO `wiki_info` VALUES ('100', '重新统计粉丝数据', '此接口会遍历所有关注数据表，仅用于数据出错时修复，请勿频繁调用', 'SNS_SDK::execute(&quot;friend.recount_fans_stat&quot;, $param);', 'app_name#string#应用名（*）&lt;br /&gt;type#string#类型，[all:重新统计所有用户][single:重新统计指定用户]（*）&lt;br /&gt;user_id#int#用户ID，type为single时必填', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '&gt;0#更新数量&lt;br /&gt;-1#参数缺失', '', '', '', '52', '150002104', '0', '1', '1448503739', '1449827107');
INSERT INTO `wiki_info` VALUES ('101', '添加通知', '', 'SNS_SDK::execute(&quot;notice.add_notice&quot;, $param);', 'to_user_id#int#接收用户ID（*）&lt;br /&gt;send_user_id#int#发送用户ID（*）&lt;br /&gt;type#string#消息类型（*），type定义见附表&lt;br /&gt;title#string#消息标题&lt;br /&gt;uid#int#ID扩展字段&lt;br /&gt;is_read#int#是否阅读，默认：0&lt;br /&gt;extra_data#string#附加数据&lt;br /&gt;app_name#string#应用名称（*）', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '&gt;0#操作成功，返回notice_id&lt;br /&gt;0#操作失败&lt;br /&gt;-1#参数缺失&lt;br /&gt;-2#无效的消息类型', 'type类型#type定义&lt;br /&gt;recycle_bin#没用的消息&lt;br /&gt;at_user#@消息&lt;br /&gt;quan_thread_like#圈子主题被赞&lt;br /&gt;quan_reply_like#圈子回复被赞&lt;br /&gt;quan_thread_reply#圈子有回复&lt;br /&gt;quan_reply_reply#圈子的回复得到回复&lt;br /&gt;quan_join#圈子有人加入&lt;br /&gt;quan_thread_del#圈子主题删除&lt;br /&gt;quan_reply_del#圈子回复被删除&lt;br /&gt;quan_recmd#圈子推荐&lt;br /&gt;&lt;br /&gt;show_cmt#用户秀有评论&lt;br /&gt;show_cmt_reply#用户秀留言得到评论&lt;br /&gt;show_like#用户秀被点赞&lt;br /&gt;show_del#用户秀被删除&lt;br /&gt;show_cmt_del#用户秀评论被删除&lt;br /&gt;show_recmd#用户秀被推荐&lt;br /&gt;friend_new_fans#新增粉丝&lt;br /&gt;friend_recmd#朋友推荐&lt;br /&gt;credit_change#积分改变通知&lt;br /&gt;credit_receive#积分领取通知&lt;br /&gt;1#1', '', '', '53', '150002104', '0', '1', '1448503932', '1452161698');
INSERT INTO `wiki_info` VALUES ('102', '根据消息ID查询消息信息', '', 'SNS_SDK::execute(&quot;notice.get_notice_by_notice_id&quot;, $param);', 'to_user_id#int#接收用户ID（*）&lt;br /&gt;notice_id#int#消息ID（*）&lt;br /&gt;app_name#string#应用名称（*）', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '-1#参数缺失', '', '', '', '53', '150002104', '0', '1', '1448503982', '1449639985');
INSERT INTO `wiki_info` VALUES ('103', '根据消息ID将未读标记为已读', '', 'SNS_SDK::execute(&quot;notice.set_notice_to_read_by_notice_id&quot;, $param);', 'to_user_id#int#接收用户ID（*）&lt;br /&gt;notice_id#int#消息ID（*）&lt;br /&gt;app_name#string#应用名称（*）', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '1#操作成功&lt;br /&gt;0#操作失败&lt;br /&gt;-1#参数缺失', '', '', '', '53', '150002104', '0', '1', '1448504060', '1449640010');
INSERT INTO `wiki_info` VALUES ('104', '根据接收者用户ID查询未读消息列表', '', 'SNS_SDK::execute(&quot;notice.get_unread_notice_list_by_to_user_id&quot;, $param);', 'to_user_id#int#接收用户ID（*）&lt;br /&gt;app_name#string#应用名称（*）&lt;br /&gt;type#string#消息类型，多个可用,分隔（*）', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '-1#参数缺失&lt;br /&gt;-2#无效的消息类型', '', '', '', '53', '150002104', '0', '1', '1448504110', '1449640353');
INSERT INTO `wiki_info` VALUES ('105', '根据接收者用户ID将未读消息标记为已读消息', '', 'SNS_SDK::execute(&quot;notice.set_notice_to_read_by_to_user_id&quot;, $param);', 'to_user_id#int#接收用户ID（*）&lt;br /&gt;app_name#string#应用名称（*）&lt;br /&gt;type#string#消息类型，多个可用,分隔（*）', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '&gt;0#操作成功，返回影响行数&lt;br /&gt;0#操作失败&lt;br /&gt;-1#参数缺失', '', '', '', '53', '150002104', '0', '1', '1448504161', '1449640371');
INSERT INTO `wiki_info` VALUES ('106', '根据接收者用户ID查询全部的消息列表', '', 'SNS_SDK::execute(&quot;notice.get_notice_list_by_to_user_id&quot;, $param);', 'to_user_id#int#接收用户ID（*）&lt;br /&gt;app_name#string#应用名称（*）&lt;br /&gt;type#string#消息类型，多个可用,分隔（*）&lt;br /&gt;orderby#string#排序，默认：add_time DESC&lt;br /&gt;limit#string#限制，默认：0,20', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '-1#参数缺失&lt;br /&gt;-2#无效的消息类型', '', '', '', '53', '150002104', '0', '1', '1448504218', '1453276795');
INSERT INTO `wiki_info` VALUES ('107', '检测账号是否存在', '', 'SNS_SDK::execute(\'member.check_login_name_exists\', $param)', '$param[\'username\']#string#登录账号&lt;br /&gt;$param[\'type\']#string#账号类型（name, mobile, email），若为空则顺序查询', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '大于0#账号ID&lt;br /&gt;等于0#账号不存在', '', '', '', '31', '150002062', '0', '1', '1448509208', '1448509208');
INSERT INTO `wiki_info` VALUES ('108', '更新用户登录账号-手机号', '该接口用于当用户是以手机号登录时，更换手机号时调用，更换后可以用新的手机号登录，其用户ID不变', 'SNS_SDK::execute(\'member.change_mobile_username\', $param)', '$param[\'user_id\']#int#用户ID&lt;br /&gt;$param[\'mobile_old\']#string#旧的手机号&lt;br /&gt;$param[\'mobile_new\']#string#新的手机号&lt;br /&gt;$param[\'b_check_mobile_old\']#boolean#是否检测旧手机号，默认：true', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '1#操作成功&lt;br /&gt;-1#参数错误&lt;br /&gt;-2#用户不存在&lt;br /&gt;-3#旧手机号匹配不上&lt;br /&gt;-4#新的手机号已被使用&lt;br /&gt;-5#更新手机索引失败&lt;br /&gt;-6#更新用户信息失败&lt;br /&gt;-7#映射表数据为空', '', '', '', '31', '150002062', '0', '1', '1448509556', '1448509556');
INSERT INTO `wiki_info` VALUES ('109', '更新用户的密码', '', 'SNS_SDK::execute(\'member.change_user_password\', $param)', '$param[\'user_id\']#int#用户ID&lt;br /&gt;$param[\'new_pwd\']#string#新的密码（明文）&lt;br /&gt;$param[\'old_pwd\']#string#旧的密码（明文）&lt;br /&gt;$param[\'b_check_old_pwd\']#boolean#是否检测旧的密码，默认：true', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '1#操作成功&lt;br /&gt;-1#参数错误&lt;br /&gt;-2#新的密码格式错误&lt;br /&gt;-3#用户不存在&lt;br /&gt;-4#旧密码错误&lt;br /&gt;-5#操作失败', '', '', '', '31', '150002062', '0', '1', '1448509791', '1448509791');
INSERT INTO `wiki_info` VALUES ('110', '提交用户坐标信息', '', 'SNS_SDK::execute(\'member.submit_user_coordinate\', $param)', '$param[\'user_id\']#int#用户ID&lt;br /&gt;$param[\'latitude\']#string#维度&lt;br /&gt;$param[\'longitude\']#string#经度', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '1#操作成功&lt;br /&gt;0#操作失败&lt;br /&gt;-1#参数错误', '', '', '', '31', '150002062', '0', '1', '1448509988', '1448509988');
INSERT INTO `wiki_info` VALUES ('111', '检测账号是否存在', '', 'http://jk.poco.cn/api/v1/check_account_api.php', 'zone_num#int#区号，当账号为电话号码时需要，默认：86&lt;br /&gt;account#string#登录账号&lt;br /&gt;b_check_pwd#boolean#是否检测用户密码为初始密码，默认：false', 'API调用，支持GET或POST，使用通信协议', 'ret_code =  0#操作成功&lt;br /&gt;ret_code = -1#参数错误&lt;br /&gt;ret_data[\'check_result\']#true：账号已经存在；false：账号不存在', '', 'http://xmen.yueus.com/wiki/upload/20151126120318oVa7ah.jpg', '', '50', '150002104', '0', '1', '1448510503', '1449729278');
INSERT INTO `wiki_info` VALUES ('112', '获取用户的授权Token', '', 'http://jk.poco.cn/api/v1/get_access_token_info_api.php', 'user_id#int#用户ID', 'API调用，支持GET或POST，使用通信协议', 'ret_code =  0#操作成功&lt;br /&gt;ret_code = -1#参数错误&lt;br /&gt;ret_code = -2#用户不存在', '', 'http://xmen.yueus.com/wiki/upload/20151126183934Uvcxbe.jpg', '', '50', '150002104', '0', '1', '1448517963', '1450245374');
INSERT INTO `wiki_info` VALUES ('158', '创建存放作品的目录ID', '', 'http://jk.poco.cn/api/v1/jane_plus/create_dir_id_api.php', 'user_id#int#用户ID', 'API调用，支持GET或POST，使用通信协议', 'ret_code =  0#创建成功，可以得到dir_id&lt;br /&gt;ret_code = -1#参数错误&lt;br /&gt;ret_code = -2#创建失败', '', 'http://xmen.yueus.com/wiki/upload/20151216165822dOUrnw.jpg', '', '54', '150002062', '0', '1', '1450256302', '1450256368');
INSERT INTO `wiki_info` VALUES ('113', '获取用户信息', '', 'http://jk.poco.cn/api/v1/get_user_info_api.php', 'user_id#int#用户ID', 'API调用，支持GET或POST，使用通信协议', 'ret_code =  0#获取成功&lt;br /&gt;ret_code = -1#参数错误&lt;br /&gt;ret_code = -2#获取失败', '', 'http://xmen.yueus.com/wiki/upload/20151228190650hZcDhF.jpg', '', '50', '150002104', '0', '1', '1448518568', '1451300810');
INSERT INTO `wiki_info` VALUES ('114', '用户通过账号登录', '', 'http://jk.poco.cn/api/v1/login_account_api.php', 'zone_num#int#区号，默认：86&lt;br /&gt;account#string#用户账号&lt;br /&gt;password#string#账号密码', 'API调用，支持GET或POST，使用通信协议', 'ret_code =  0#操作成功&lt;br /&gt;ret_code = -1#参数错误&lt;br /&gt;ret_code = -2#账号不存在&lt;br /&gt;ret_code = -3#密码错误', '', 'http://xmen.yueus.com/wiki/upload/20151126183709oCBwvq.jpg', '', '50', '150002104', '0', '1', '1448519692', '1449729367');
INSERT INTO `wiki_info` VALUES ('115', '通过refreshToken刷新授权Token', '', 'http://jk.poco.cn/api/v1/refresh_access_token_info_api.php', 'user_id#int#用户ID&lt;br /&gt;refresh_token#string#刷新Token', 'API调用，支持GET或POST，使用通信协议', 'ret_code =  0#操作成功&lt;br /&gt;ret_code = -1#参数错误', '', 'http://xmen.yueus.com/wiki/upload/20151126143927ZAQUVi.jpg', '', '50', '150002104', '0', '1', '1448519967', '1448520038');
INSERT INTO `wiki_info` VALUES ('116', '获取上传的地址配置', '', 'SNS_SDK::execute(\'common.get_upload_urls\')', '无需参数', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', 'upload_image_url#图片上传地址&lt;br /&gt;upload_file_url#文件上传地址&lt;br /&gt;upload_user_icon_url#用户头像上传地址', '', 'http://xmen.yueus.com/wiki/upload/20151126152908S0Creg.jpg', '', '41', '150002062', '0', '1', '1448522948', '1448522948');
INSERT INTO `wiki_info` VALUES ('117', '更新用户信息', '', 'http://jk.poco.cn/api/v1/update_user_info_api.php', 'user_id#int#用户ID（*）&lt;br /&gt;access_token#string#用户的授权Token（*）&lt;br /&gt;nickname#string#用户昵称&lt;br /&gt;user_space#string#空间背景图&lt;br /&gt;signature#string#签名&lt;br /&gt;sex#string#性别&lt;br /&gt;age#int#年龄&lt;br /&gt;pwd#string#用户密码（新的密码）&lt;br /&gt;repwd#string#确认密码（新的密码）&lt;br /&gt;user_icon#string#用户头像', 'API调用，支持GET或POST，使用通信协议', 'ret_code =  0#修改成功&lt;br /&gt;ret_code = -1#参数错误&lt;br /&gt;ret_code = -2#修改失败&lt;br /&gt;ret_code = -3#两次密码不一致&lt;br /&gt;ret_code = -4#用户被后台管理员删除&lt;br /&gt;ret_code = -5#用户被后台管理员设置为垃圾用户', '', '', '', '50', '150002104', '0', '1', '1448533496', '1452664571');
INSERT INTO `wiki_info` VALUES ('118', '验证用户密码是否正确', '', 'http://jk.poco.cn/api/v1/verify_password_api.php', 'user_id#int#用户ID&lt;br /&gt;pwd#string#用户密码，明文', 'API调用，支持GET或POST，使用通信协议', 'ret_code =  0#密码正确&lt;br /&gt;ret_code = -1#参数错误&lt;br /&gt;ret_code = -2#密码错误', '', '', '', '50', '150002104', '0', '1', '1448534757', '1448534757');
INSERT INTO `wiki_info` VALUES ('119', '更新帖子', '', 'SNS_SDK::execute(\'quan.update_thread_info\', $param);', '$param[\'thread_id\']#int#帖子ID（*）&lt;br /&gt;$param[\'data\']#array#帖子数据&lt;br /&gt;$param[\'data\'][\'title\']#string#帖子标题&lt;br /&gt;$param[\'data\'][\'content\']#string#帖子内容&lt;br /&gt;$param[\'data\'][\'custom_data\']#array#帖子自定义数据&lt;br /&gt;', 'include \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '1#更新成功&lt;br /&gt;0#更新失败&lt;br /&gt;-1#参数错误&lt;br /&gt;-2#无更新数据', '', '', '', '47', '150002137', '80', '1', '1448608066', '1448613838');
INSERT INTO `wiki_info` VALUES ('120', '屏蔽帖子', '', 'SNS_SDK::execute(\'quan.stop_thread\', $param);', '$param[\'thread_id\']#int#帖子ID（*）', 'include \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '1#操作成功&lt;br /&gt;0#操作失败&lt;br /&gt;-1#参数错误', '', '', '', '47', '150002137', '80', '1', '1448608452', '1448613850');
INSERT INTO `wiki_info` VALUES ('121', '恢复帖子', '', 'SNS_SDK::execute(\'quan.start_thread\', $param);', '$param[\'thread_id\']#int#帖子ID（*）', 'include \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '1#操作成功&lt;br /&gt;0#操作失败&lt;br /&gt;-1#参数错误', '', '', '', '47', '150002137', '80', '1', '1448608553', '1451891236');
INSERT INTO `wiki_info` VALUES ('122', '根据帖子ID获取回复列表', '', 'SNS_SDK::execute(\'article.get_post_list_by_thread_id\', $param);', '$param[\'thread_id\']#int#帖子ID（*）&lt;br /&gt;$param[\'fields\']#array#获取字段控制，默认：获取所有字段&lt;br /&gt;$param[\'limit\']#string#获取数据限制，默认：\'0,20\'&lt;br /&gt;$param[\'b_select_count\']#boolean#是否查询数据量，默认：false&lt;br /&gt;$param[\'order_by\']#string#排序，默认 add_time DESC&lt;br /&gt;$param[\'status\']#int# 0:只获取的已屏蔽的回复  1：只获取该帖子正常的回复 2：获取该帖子所有的回复 默认：1', 'include \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', 'int#查询回复数量&lt;br /&gt;array#查询回复列表, 现在回复的结构只有一级回复和二级回复，如果是二级回复，数据里会有 \'to_post_info\' 字段，为数组类型，结构如下图：', '', 'http://xmen.yueus.com/wiki/upload/20160105161544TjD8GQ.png', '', '47', '150002137', '70', '1', '1448608826', '1451981744');
INSERT INTO `wiki_info` VALUES ('123', '发表回复', '', 'SNS_SDK::execute(\'quan.pub_post\', $param);', '$param[\'quan_id\']#int#圈子ID（*）&lt;br /&gt;$param[\'user_id\']#int#用户ID（*）&lt;br /&gt;$param[\'thread_id\']#int#帖子ID（*）&lt;br /&gt;$param[\'content\']#string#帖子内容（*）&lt;br /&gt;$param[\'to_post_id\']#int#回复的回复的ID&lt;br /&gt;$param[\'group_id\']#int#三级回复的ID&lt;br /&gt;$param[\'floor\']#int#楼层数&lt;br /&gt;$param[\'ip\']#int#回复客户端IP&lt;br /&gt;$param[\'cover_img_url\']#string#封面图,只对于一级回复有用&lt;br /&gt;$param[\'custom_data\']#array#自定义数据', 'include \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '回复的ID &gt; 0#添加成功&lt;br /&gt;0#添加失败&lt;br /&gt;-1#参数错误&lt;br /&gt;-2#发帖频率太高，当前回复频率控制在1分钟。', '', 'http://xmen.yueus.com/wiki/upload/20151204100425G8Lisj.png', '', '47', '150002137', '70', '1', '1448609373', '1454552124');
INSERT INTO `wiki_info` VALUES ('124', '更新回复', '', 'SNS_SDK::execute(\'quan.update_post_info\', $param);', '$param[\'post_id\']#string#回复ID（*）&lt;br /&gt;$param[\'data\'][\'content\']#string#回复内容（*）&lt;br /&gt;$param[\'data\'][\'cover_img_url\']#string#回复的封面图，只对一级回复起作用&lt;br /&gt;$param[\'data\'][\'custom_data\']#array#自定义数据', 'include \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '1#更新成功&lt;br /&gt;0#更新失败&lt;br /&gt;-1#参数错误&lt;br /&gt;-2#没有更新的数据', '', '', '', '47', '150002137', '70', '1', '1448612101', '1448864409');
INSERT INTO `wiki_info` VALUES ('125', '屏蔽回复', '', 'SNS_SDK::execute(\'quan.stop_post\', $param);', '$param[\'post_id\']#int#回复ID（*）', 'include \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '1#操作成功&lt;br /&gt;0#操作失败&lt;br /&gt;-1#参数错误', '', '', '', '47', '150002137', '70', '1', '1448612204', '1448613911');
INSERT INTO `wiki_info` VALUES ('126', '开启回复', '', 'SNS_SDK::execute(\'quan.start_post\', $param);', '$param[\'post_id\']#int#回复ID&lt;br /&gt;', 'include \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '1#操作成功&lt;br /&gt;0#操作失败&lt;br /&gt;-1#参数错误', '', '', '', '47', '150002137', '70', '1', '1448612290', '1448613928');
INSERT INTO `wiki_info` VALUES ('127', '新浪微博、QQ、微信平台的第三方登录（POCO之前的协议）', '', 'http://jk.poco.cn/api/v1/create_bind_account_api.php', 'sid#string#第三方平台的用户ID（新浪微博、QQ、QQ空间）&lt;br /&gt;token#string#第三方平台访问接口的授权Token&lt;br /&gt;ctype#string#APP的类型，例如：jianke_app_iphone&lt;br /&gt;partner#string#第三方平台的标示（sina新浪微博、qq腾讯、qzone腾讯空间、weixin_open微信开放平台）&lt;br /&gt;openid#string#第三方平台的用户ID（微信open）&lt;br /&gt;refresh_token#string#刷新授权用的Token&lt;br /&gt;unionid#string#微信开放平台的UnionId机制&lt;br /&gt;', 'API调用，支持GET或POST，用的是POCO之前的协议，建议用回新的第三方登录接口', 'xml#登录信息&lt;br /&gt;result = \'0000\'#表示操作成功&lt;br /&gt;result = \'4000\'#表示操作失败，具体原因在message字段体现&lt;br /&gt;result = \'5000\'#表示用户被后台管理员删除，不允许其登录', '', 'http://xmen.yueus.com/wiki/upload/201511301746116LUzCS.jpg', '', '50', '150002104', '0', '1', '1448876771', '1450338650');
INSERT INTO `wiki_info` VALUES ('128', '创建作品信息', '', 'http://jk.poco.cn/api/v1/jane_plus/create_portfolio_api.php', 'user_id#int#用户ID&lt;br /&gt;prefix#string#解压目录前缀&lt;br /&gt;access_token#string#授权token&lt;br /&gt;portfolio_name#string#作品名&lt;br /&gt;cat_id#int#分类ID&lt;br /&gt;cover_img_url#string#封面URL&lt;br /&gt;portfolio_url#string#作品URL&lt;br /&gt;portfolio_url_nocdn#string#作品URL不带CDN&lt;br /&gt;is_private#int#是否私密（0：否，默认；1：是）', 'API调用，支持GET或POST，使用通信协议', 'ret_code =  0#创建成功&lt;br /&gt;ret_code = -1#参数错误&lt;br /&gt;ret_code = -2#创建失败&lt;br /&gt;ret_code = -3#用户不存在&lt;br /&gt;ret_code = -4#用户被后台管理员删除或设置为垃圾用户&lt;br /&gt;ret_code = -5#用户被后台管理员设置为垃圾用户', '', '', '', '54', '150002104', '0', '1', '1448877647', '1456305925');
INSERT INTO `wiki_info` VALUES ('129', '删除作品信息', '', 'http://jk.poco.cn/api/v1/jane_plus/del_portfolio_api.php', 'user_id#int#用户ID&lt;br /&gt;portfolio_id#int#作品ID', 'API调用，支持GET或POST，使用通信协议', 'ret_code =  0#删除成功&lt;br /&gt;ret_code = -1#参数错误&lt;br /&gt;ret_code = -2#用户ID与作品ID校验失败&lt;br /&gt;ret_code = -3#删除失败&lt;br /&gt;ret_code = -4#作品不存在', '', '', '', '54', '150002104', '0', '1', '1448878206', '1448878206');
INSERT INTO `wiki_info` VALUES ('130', '获取广场作品列表', '', 'http://jk.poco.cn/api/v1/jane_plus/get_plaza_portfolio_api.php', 'cat_id#int#分类ID（*）&lt;br /&gt;limit#string#获取限制, 0,10 表示从第1条开始取10条，默认不限制', 'API调用，支持GET或POST，使用通信协议', 'ret_code =  0#获取成功&lt;br /&gt;ret_code = -1#参数错误&lt;br /&gt;ret_code = -2#没有作品&lt;br /&gt;ret_code = -3#获取失败', '', 'http://xmen.yueus.com/wiki/upload/20151130181742K7HOLk.jpg', '', '54', '150002104', '0', '1', '1448878662', '1450324160');
INSERT INTO `wiki_info` VALUES ('131', '获取用户的作品列表', '', 'http://jk.poco.cn/api/v1/jane_plus/get_portfolio_api.php', 'user_id#int#用户ID', 'API调用，支持GET或POST，使用通信协议', 'ret_code =  0#获取成功&lt;br /&gt;ret_code = -1#参数错误&lt;br /&gt;ret_code = -2#获取失败', '', 'http://xmen.yueus.com/wiki/upload/20151130182254HOK6G9.jpg', '', '54', '150002104', '0', '1', '1448878974', '1448878974');
INSERT INTO `wiki_info` VALUES ('132', '更新作品信息', '', 'http://jk.poco.cn/api/v1/jane_plus/update_portfolio_api.php', 'user_id#int#用户ID&lt;br /&gt;access_token#string#用户授权Token&lt;br /&gt;portfolio_id#int#作品ID&lt;br /&gt;portfolio_name#string#作品名称&lt;br /&gt;cat_name#string#分类名称&lt;br /&gt;cover_img_url#string#封面URL&lt;br /&gt;portfolio_url#string#作品URL&lt;br /&gt;portfolio_url_nocdn#string#作品URL不带CDN', 'API调用，支持GET或POST，使用通信协议', 'ret_code =  0#更新成功&lt;br /&gt;ret_code = -1#参数错误&lt;br /&gt;ret_code = -2#用户ID与作品ID校验失败&lt;br /&gt;ret_code = -3#更新数据失败&lt;br /&gt;ret_code = -4#用户被后台管理员删除或设置为垃圾用户', '', '', '', '54', '150002104', '0', '1', '1448879313', '1450337172');
INSERT INTO `wiki_info` VALUES ('133', '第三方登录接口（Facebook、新浪微博、QQ、QZone、微信open）', '', 'http://jk.poco.cn/api/v1/partner_login_api.php', 'openid#string#第三方平台的用户ID&lt;br /&gt;access_token#string#第三方平台的授权Token&lt;br /&gt;refresh_token#string#第三方平台的刷新Token&lt;br /&gt;signed_request#string#签名请求(Facebook独有)，若没有不需要传递&lt;br /&gt;partner#string#第三方标识(facebook:Facebook、sina:新浪微博、qq:腾讯QQ、qzone:QQ空间、weixin_open:微信open平台)&lt;br /&gt;unionid#string#第三方平台的联合ID（微信open独有）', 'API调用，支持GET或POST，使用通信协议', 'ret_code =  0#绑定成功&lt;br /&gt;ret_code = -1#参数错误&lt;br /&gt;ret_code = -2#创建账号失败', '', 'http://xmen.yueus.com/wiki/upload/201512010922224Tr0Ch.jpg', '', '50', '150002104', '0', '1', '1448932708', '1448932942');
INSERT INTO `wiki_info` VALUES ('134', '文件上传接口', '用于上传各种类型的文件，如压缩包等', 'http://14.29.52.16:9000/extract.cgi', 'params#string#POST数据的总key&lt;br /&gt;uid#string#用户ID（JOSN格式）&lt;br /&gt;上传的文件#object#multipart-formdata', 'API调用，支持POST', 'code=0#上传成功&lt;br /&gt;code!=0#上传失败&lt;br /&gt;', '', '', '', '55', '150002104', '0', '1', '1448955573', '1448955596');
INSERT INTO `wiki_info` VALUES ('135', '图片上传接口', '用于图片上传，会对图片文件重命名，并且生成各种尺寸缩略图', 'http://14.29.52.16:9000/image_upload.cgi', 'params#string#POST数据的总的key&lt;br /&gt;uid#string#用户ID&lt;br /&gt;图片文件#object#multipart-formdata', 'API调用，支持POST', 'code=0#操作成功&lt;br /&gt;code!=0#操作失败', '', '', '', '55', '150002104', '0', '1', '1448955862', '1448955862');
INSERT INTO `wiki_info` VALUES ('136', '获取圈子信息', '', 'SNS_SDK::execute(\'quan.get_quan_info_by_quan_id\', $param);', '$param[\'quan_id\']#int#圈子ID（*）&lt;br /&gt;$param[\'status\']#int# 是否返回已被屏蔽了的圈子，0：返回， 1：不返回。', 'include \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', 'false#未找到圈子相关信息&lt;br /&gt;array#圈子信息', '圈子表字段说明&lt;br /&gt;\'quan_id\',              // 圈子ID（主键自增)&lt;br /&gt;\'cat_id\',                  // 圈子分类ID&lt;br /&gt;\'name\',                   // 圈子名称&lt;br /&gt;\'summary\',             // 圈子简介&lt;br /&gt;\'content\',                // 圈子描述&lt;br /&gt;\'cover_img_url\',     // 圈子封面图&lt;br /&gt;\'quan_icon\',           // 圈子头像&lt;br /&gt;\'status\',                  // 圈子状态，0：关闭；1：正常&lt;br /&gt;\'user_id\',                // 创建者ID&lt;br /&gt;\'user_count\',          // 用户数量&lt;br /&gt;\'last_join_user_id\', // 最后加入的用户ID&lt;br /&gt;\'last_join_time\',      // 最后加入的时间&lt;br /&gt;\'app_id\',                 // 项目ID&lt;br /&gt;\'add_time\',             // 添加时间&lt;br /&gt;\'update_time\',        // 更新时间', '', '', '47', '150002137', '100', '1', '1448961445', '1451892464');
INSERT INTO `wiki_info` VALUES ('137', '新浪微博授权登录', '若已绑定则找回之前绑定的用户信息，否则创建一个新的用户信息', 'SNS_SDK::execute(\'partner_login.sina_oauth_login\', $param)', '$param[\'openid\']#string#第三方平台的用户ID&lt;br /&gt;$param[\'access_token\']#string#第三方平台的授权Token&lt;br /&gt;$param[\'app_name\']#string#APP的名称', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', 'code=0#操作成功，返回用户信息，如下&lt;br /&gt;data[\'user_id\']#用户ID&lt;br /&gt;data[\'pwd_hash\']#密码Hash&lt;br /&gt;data[\'nickname\']#昵称&lt;br /&gt;data[\'is_first\']#是否第一次登陆&lt;br /&gt;code=-1#参数错误&lt;br /&gt;code=-2#创建帐号失败&lt;br /&gt;code=-3#添加绑定失败', '', '', '', '56', '150002104', '0', '1', '1448968819', '1455856151');
INSERT INTO `wiki_info` VALUES ('138', 'QQ授权登录', '若已绑定则找回之前绑定的用户信息，否则创建一个新的用户信息', 'SNS_SDK::execute(\'partner_login.qq_oauth_login\', $param)', '$param[\'openid\']#string#第三方平台的用户ID&lt;br /&gt;$param[\'access_token\']#string#第三方平台的授权Token&lt;br /&gt;$param[\'app_name\']#string#APP的名称', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', 'code=0#操作成功，返回用户信息，如下&lt;br /&gt;data[\'user_id\']#用户ID&lt;br /&gt;data[\'pwd_hash\']#密码Hash&lt;br /&gt;data[\'nickname\']#昵称&lt;br /&gt;data[\'is_first\']#是否第一次登陆&lt;br /&gt;code=-1#参数错误&lt;br /&gt;code=-2#创建帐号失败&lt;br /&gt;code=-3#添加绑定失败', '', '', '', '56', '150002104', '0', '1', '1448969026', '1455856159');
INSERT INTO `wiki_info` VALUES ('139', '获取回复详细信息', '', 'SNS_SDK::execute(\'quan.get_post_info_by_post_id\', $param);', '$param[\'post_id\']#int#回复ID&lt;br /&gt;$param[\'status\']#int#是否返回已被屏蔽了的回复，0：返回， 1：不返回。', 'include \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', 'false#未能找到相关回复信息&lt;br /&gt;array#回复信息', '回复表字段说明&lt;br /&gt;\'post_id\',              // 回复ID（主键，自增）&lt;br /&gt;\'thread_id\',            // 帖子ID&lt;br /&gt;\'quan_id\',              // 圈子ID&lt;br /&gt;\'user_id\',              // 回复人ID&lt;br /&gt;\'status\',               // 状态（0：管理员屏蔽，1：正常，2:用户删除）&lt;br /&gt;\'to_post_id\',           // 回复的回复ID&lt;br /&gt;\'group_id\',             // 回复组ID（说明：子回复的组ID就为一级回复的ID）&lt;br /&gt;\'floor\',                // 楼层数（只针对于帖子的回复）&lt;br /&gt;\'ip\',                   // 回复人IP&lt;br /&gt;\'add_time\',             // 添加时间&lt;br /&gt;\'update_time\',          // 更新时间&lt;br /&gt;\'cover_img_url\',        // 封面图&lt;br /&gt;\'content\',              // 内容&lt;br /&gt;\'custom_data\',          // 自定义数据&lt;br /&gt;\'like_count\',          // 点赞数', '', '', '47', '150002137', '70', '1', '1449022473', '1451892515');
INSERT INTO `wiki_info` VALUES ('140', 'HTML 转UBB格式', '', 'SNS_SDK::execute(\'common.html_to_ubb\', $param)', '$param[\'str\']#string#字符', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', 'UBB格式的字符', '', '', '', '41', '150002062', '0', '1', '1449030643', '1449030643');
INSERT INTO `wiki_info` VALUES ('141', '微信open平台登录授权', '若已绑定则找回之前绑定的用户信息，否则创建一个新的用户信息', 'SNS_SDK::execute(\'partner_login.weixin_open_oauth_login\', $param)', '$param[\'openid\']#string#第三方平台的用户ID&lt;br /&gt;$param[\'unionid\']#string#第三方平台的唯一ID&lt;br /&gt;$param[\'access_token\']#string#第三方平台的授权Token&lt;br /&gt;$param[\'refresh_token\']#string#第三方平台的刷新Token&lt;br /&gt;$param[\'app_name\']#string#APP的名称', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', 'code = 0#操作成功，返回用户信息，如下&lt;br /&gt;data[\'user_id\']#用户ID&lt;br /&gt;data[\'pwd_hash\']#密码Hash&lt;br /&gt;data[\'nickname\']#用户昵称&lt;br /&gt;data[\'is_first\']#是否第一次登陆&lt;br /&gt;code = -1#参数错误&lt;br /&gt;code = -2#创建帐号失败&lt;br /&gt;code = -3#添加绑定失败', '', '', '', '56', '150002104', '0', '1', '1449121345', '1455856171');
INSERT INTO `wiki_info` VALUES ('142', '根据回复ID获取回复列表', '', 'SNS_SDK::execute(\'article.get_post_list_by_post_id\', $param);', '$param[\'post_id\']#int#回复ID（*）&lt;br /&gt;$param[\'fields\']#array#获取字段控制，默认：获取所有字段&lt;br /&gt;$param[\'limit\']#string#获取数据限制，默认：\'0,20\'&lt;br /&gt;$param[\'b_select_count\']#boolean#是否查询数据量，默认：false&lt;br /&gt;$param[\'order_by\']#string#排序，默认 add_time DESC&lt;br /&gt;$param[\'status\']#int# 0:只获取的已屏蔽的回复  1：只获取该帖子正常的回复 2：获取该帖子所有的回复 默认：1', 'include \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', 'int#查询回复数量&lt;br /&gt;array#查询回复列表,返回的数据和 “根据帖子ID获取回复列表” 接口 差不多， 如果是三级回复，增加了  (array)to_post_info 字段。', '', 'http://xmen.yueus.com/wiki/upload/201512081544431IgBjU.png', '', '47', '150002137', '70', '0', '1449131482', '1451981539');
INSERT INTO `wiki_info` VALUES ('143', '临时-圈子话题接口', '底层筛选出了一些热门帖子列表', 'SNS_SDK::execute(\'quan.get_hot_thread_list_temp\')', '不需要参数', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '帖子列表', '', 'http://xmen.yueus.com/wiki/upload/201512032036111l0SmV.jpg', '', '47', '150002062', '0', '1', '1449146123', '1449146208');
INSERT INTO `wiki_info` VALUES ('146', '帖子点赞接口', '', 'SNS_SDK::execute(\'quan.incr_thread_like\', $param);', '$param[\'thread_id\']#int#帖子ID&lt;br /&gt;$param[\'user_id\']#int#会员ID', 'include \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '1#操作成功&lt;br /&gt;0#操作失败&lt;br /&gt;-1#参数错误', '', '', '', '47', '150002137', '80', '1', '1449556397', '1450146832');
INSERT INTO `wiki_info` VALUES ('147', '帖子取消点赞接口', '', 'SNS_SDK::execute(\'quan.decr_thread_like\', $param);', '$param[\'thread_id\']#int#帖子ID&lt;br /&gt;$param[\'user_id\']#int#会员ID', 'include \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '1#操作成功&lt;br /&gt;0#操作失败&lt;br /&gt;-1#参数错误', '', '', '', '47', '150002137', '80', '1', '1449556609', '1450146842');
INSERT INTO `wiki_info` VALUES ('148', '回复点赞接口', '', 'SNS_SDK::execute(\'quan.incr_post_like\', $param);', '$param[\'post_id\']#int#回复ID&lt;br /&gt;$param[\'user_id\']#int#会员ID', 'include \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '1#操作成功&lt;br /&gt;0#操作失败&lt;br /&gt;-1#参数错误', '', '', '', '47', '150002137', '70', '1', '1449556721', '1450146850');
INSERT INTO `wiki_info` VALUES ('149', '回复取消点赞接口', '', 'SNS_SDK::execute(\'quan.decr_post_like\', $param);', '$param[\'post_id\']#int#回复ID&lt;br /&gt;$param[\'user_id\']#int#会员ID', 'include \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '1#操作成功&lt;br /&gt;0#操作失败&lt;br /&gt;-1#参数错误', '', '', '', '47', '150002137', '70', '1', '1449556826', '1450146864');
INSERT INTO `wiki_info` VALUES ('219', '获取阿里云服务器的上传服务Token', '', 'SNS_SDK::execute(\'common.get_aliyun_oss_upload_token\', $param)', 'identify#int#唯一标示ID，例如用户ID（*）&lt;br /&gt;file_ext#string#文件扩展名，例如：\'jpg\'，若传递则会返回文件名', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', 'code = 0#获取成功&lt;br /&gt;code = -1#参数错误&lt;br /&gt;code = -2#获取不到key&lt;br /&gt;code = -3#请求授权失败', '', 'http://xmen.yueus.com/wiki/upload/201601221149095eS9jE.jpg', '', '41', '150002062', '0', '1', '1453434437', '1453434549');
INSERT INTO `wiki_info` VALUES ('150', '获取附近的人', '通过用户ID获取附近的人，使用前请先调用 [提交用户坐标信息] 接口上传位置信息。', 'SNS_SDK::execute(&quot;member.get_nearby_by_user_id&quot;, $param);', 'user_id#int#用户ID（*）&lt;br /&gt;range#int#范围，默认:4800(单位:M)&lt;br /&gt;limit#string#限制，默认:0,20', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '0#操作失败&lt;br /&gt;-1#参数错误&lt;br /&gt;-2#用户坐标不存在', '', 'http://xmen.yueus.com/wiki/upload/20151211095238gNjNt8.png', '', '31', '150002104', '0', '1', '1449797870', '1453276567');
INSERT INTO `wiki_info` VALUES ('151', '通过用户ID获取用户坐标信息', '', 'SNS_SDK::execute(&quot;member.get_coordinate_by_user_id&quot;, $param);', 'user_id#int#用户ID（*）', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '-1#参数错误', '', 'http://xmen.yueus.com/wiki/upload/20151215111511TR20xb.png', '', '31', '150002104', '0', '1', '1450149311', '1450149311');
INSERT INTO `wiki_info` VALUES ('152', '注册一个项目', '调用底层的SDK接口前请都先调用下此接口', 'SNS_SDK::execute(\'common.register_project\', $param)', 'project_name#string#项目名称，支持\'xmen\' 或 \'jane_plus\'', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', 'true#操作成功&lt;br /&gt;false#操作失败', '', '', '', '41', '150002062', '0', '1', '1450165644', '1450165684');
INSERT INTO `wiki_info` VALUES ('153', '设置缓存', '', 'SNS_SDK::execute(\'common.set_cache\', $param)', 'cache_key#string#缓存的key（*）&lt;br /&gt;data#mixed#缓存的数据（*）&lt;br /&gt;cache_time#int#过期时间，单位：秒，默认：600', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', 'true#操作成功&lt;br /&gt;false#操作失败', '', '', '', '41', '150002062', '0', '1', '1450165830', '1450165858');
INSERT INTO `wiki_info` VALUES ('154', '获取缓存数据', '', 'SNS_SDK::execute(\'common.get_cache\', $param)', 'cache_key#string#缓存key（*）', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', 'mixed#缓存的数据', '', '', '', '41', '150002062', '0', '1', '1450165929', '1450166017');
INSERT INTO `wiki_info` VALUES ('155', '删除缓存数据', '', 'SNS_SDK::execute(\'common.del_cache\', $param)', 'cache_key#string#缓存key（*）', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', 'true#操作成功&lt;br /&gt;false#操作失败', '', '', '', '41', '150002062', '0', '1', '1450165995', '1450166025');
INSERT INTO `wiki_info` VALUES ('156', '获取用户间的好友状态', '', 'SNS_SDK::execute(&quot;friend.get_follow_status&quot;, $param);', 'user_id#int#用户ID&lt;br /&gt;to_check_id_array#array#被检测的用户ID&lt;br /&gt;app_name#string#应用名', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '-1#参数缺失', '值#说明&lt;br /&gt;follow#我关注了对方，对方没关注我&lt;br /&gt;fans#对方关注我，我没关注对方&lt;br /&gt;both#双方互相关注&lt;br /&gt;none#双方都没关注', 'http://xmen.yueus.com/wiki/upload/20151215162717xWzkHT.png', '', '52', '150002104', '0', '1', '1450168037', '1450168259');
INSERT INTO `wiki_info` VALUES ('157', '获取广场的作品分类列表', '', 'http://jk.poco.cn/api/v1/jane_plus/get_square_category_api.php', '不需要参数', 'API调用，支持GET或POST，使用通信协议', 'cat_id#分类ID&lt;br /&gt;cat_name#分类名称&lt;br /&gt;art_count#作品数量&lt;br /&gt;stat_id#统计ID（阿华统计系统的统计ID）', '', 'http://xmen.yueus.com/wiki/upload/20151231173253VGXkIj.jpg', '', '54', '150002062', '0', '1', '1450173038', '1451554373');
INSERT INTO `wiki_info` VALUES ('159', '根据留言ID获取评论信息', '', 'SNS_SDK::execute(\'message.get_cmt_info\', $param);', '$param[\'cmt_id\']#int#评论ID（*）', 'include \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', 'array#评论信息', '', 'http://xmen.yueus.com/wiki/upload/20151218170514vQuW35.png', '', '40', '150002063', '0', '1', '1450429514', '1452832278');
INSERT INTO `wiki_info` VALUES ('160', '发送系统消息', '', 'SNS_SDK::execute(\'notice.send_system_notice\', $param)', 'title#string#消息标题（可以为空） &lt;br /&gt;content#string#消息内容（该字段与custom_data至少有一个字段非空） &lt;br /&gt;cover_img_url#string#消息封面图（可以为空） &lt;br /&gt;send_user_id#int#发送者用户ID（*）&lt;br /&gt;custom_data#array#自定义数据数组（该字段与content至少有一个字段非空）&lt;br /&gt;expire_time#int#过期时间点的时间戳，默认是一个月后的时间戳 ', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '大于0#消息ID（操作成功）&lt;br /&gt;等于0#操作失败&lt;br /&gt;等于-1#参数错误&lt;br /&gt;等于-2#项目名称为空&lt;br /&gt;等于-99#没有注册项目名', '', '', '', '53', '150002062', '0', '1', '1450752739', '1450752739');
INSERT INTO `wiki_info` VALUES ('161', '获取系统消息未读消息量', '', 'SNS_SDK::execute(\'notice.get_system_notice_unread_count\', $param)', 'user_id#int#用户ID', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '大于0#未读消息数量&lt;br /&gt;等于0#没有未读消息&lt;br /&gt;等于-1#参数错误&lt;br /&gt;等于-2#项目名称为空&lt;br /&gt;等于-99#没有注册项目名', '', '', '', '53', '150002062', '0', '1', '1450752981', '1450752981');
INSERT INTO `wiki_info` VALUES ('162', '将系统消息阅读状态设置为“已读”', '', 'SNS_SDK::execute(\'notice.set_system_notice_read_status\', $param)', 'user_id#int#用户ID&lt;br /&gt;notice_id#array#消息ID（数组传递）', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '1#操作成功&lt;br /&gt;-1#参数错误&lt;br /&gt;-99#没有注册项目名', '', '', '', '53', '150002062', '0', '1', '1450753075', '1450753075');
INSERT INTO `wiki_info` VALUES ('163', '检测系统消息阅读状态', '', 'SNS_SDK::execute(\'notice.check_system_notice_is_read\', $param)', 'user_id#int#用户ID&lt;br /&gt;notice_id#array#消息ID（数组传递） ', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', 'array[消息ID]为\'read\'#已读&lt;br /&gt;array[消息ID]为\'unread\'#未读', '', '', '', '53', '150002062', '0', '1', '1450753180', '1450753180');
INSERT INTO `wiki_info` VALUES ('164', '获取系统消息列表', '', 'SNS_SDK::execute(\'notice.get_system_notice_list\', $param)', 'user_id#int#用户ID（若传递，会查询出阅读状态）&lt;br /&gt;limit#string#翻页，默认：\'0,20\'&lt;br /&gt;b_select_count#boolean#是否获取数量，默认：false&lt;br /&gt;b_select_expire#boolean#是否查询过期的消息，默认：false', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', 'array#系统消息列表', '', '', '', '53', '150002062', '0', '1', '1450753286', '1450753286');
INSERT INTO `wiki_info` VALUES ('165', '帖子浏览量增加', '', 'SNS_SDK::execute(\'quan.incr_thread_view\', $param);', '$param[\'thread_id\']#int#帖子ID&lt;br /&gt;$param[\'user_id\']#int#浏览者会员ID', 'include \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '1#操作成功&lt;br /&gt;0#操作失败&lt;br /&gt;-1#参数错误', '', '', '', '47', '150002137', '80', '1', '1450834591', '1450840165');
INSERT INTO `wiki_info` VALUES ('166', '通过用户数组发送私信', '此接口已做黑名单判断', 'SNS_SDK::execute(&quot;private_message.send_private_message_by_member_array&quot;, $param);', '$param[\'user_id\']#int#发起的用户ID(*)&lt;br /&gt;$param[\'member_array\']#array#参与的用户ID数组，两个人为私聊，两个以上为群聊(须包含自己)(*)&lt;br /&gt;$param[\'title\']#string#聊天标题(群聊标题，私聊不需要)&lt;br /&gt;$param[\'content\']#string#消息内容&lt;br /&gt;$param[\'msg_type\']#int#消息类型，1-文字 2-图片&lt;br /&gt;$param[\'app_name\']#string#应用名称(*)', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', ' 1#操作成功&lt;br /&gt; 0#操作失败&lt;br /&gt;-1#参数错误&lt;br /&gt;-2#群组创建失败&lt;br /&gt;-3#消息记录失败&lt;br /&gt;-4#消息发送成功但被对方列入黑名单&lt;br /&gt;-5#user_id未被包含在member_array中', '', 'http://xmen.yueus.com/wiki/upload/20151223134038OLeQGF.png', '', '57', '150002104', '0', '1', '1450835399', '1450849640');
INSERT INTO `wiki_info` VALUES ('167', '通过群组ID发送私信', '此接口已做黑名单判断', 'SNS_SDK::execute(&quot;private_message.send_private_message_by_group_id&quot;, $param);', 'group_id#int#群组ID(*)&lt;br /&gt;user_id#int#发起的用户ID(*)&lt;br /&gt;content#string#消息内容(*)&lt;br /&gt;msg_type#int#消息类型1-文字 2-图片(*)&lt;br /&gt;app_name#string#应用名称(*)', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '1#操作成功&lt;br /&gt;0#操作失败&lt;br /&gt;-1#参数错误&lt;br /&gt;-2#群组不存在&lt;br /&gt;-3#消息记录失败&lt;br /&gt;-4#消息发送成功但被对方列入黑名单&lt;br /&gt;-5#用户不属于该群组', '', '', '', '57', '150002104', '0', '1', '1450835918', '1450849648');
INSERT INTO `wiki_info` VALUES ('168', '通过用户ID获取私信群组', '', 'SNS_SDK::execute(&quot;private_message.get_group_list_by_user_id&quot;, $param);', 'user_id#int#用户ID(*)&lt;br /&gt;limit#string#限制，默认：null&lt;br /&gt;app_name#string#应用名称(*)', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '-1#参数错误', '', 'http://xmen.yueus.com/wiki/upload/20151223134135edZwsM.png', '', '57', '150002104', '0', '1', '1450836117', '1450849295');
INSERT INTO `wiki_info` VALUES ('169', '获取消息列表', '', 'SNS_SDK::execute(&quot;private_message.get_message_list&quot;, $param);', 'user_id#int#用户ID(*)&lt;br /&gt;group_id#int#群组ID(*)&lt;br /&gt;last_msg_id#int#最后一条消息ID，只获取这条消息之前的消息，默认：0&lt;br /&gt;limit#string#限制，默认：0,20&lt;br /&gt;app_name#string#应用名称(*)', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '-1#参数错误', '', 'http://xmen.yueus.com/wiki/upload/20151223101751geE29s.png', '', '57', '150002104', '0', '1', '1450837071', '1450842858');
INSERT INTO `wiki_info` VALUES ('170', '重置未读消息', '', 'SNS_SDK::execute(&quot;private_message.reset_new_message_num&quot;, $param);', 'group_id#int#群组ID(*)&lt;br /&gt;user_id#int#用户ID (*)&lt;br /&gt;app_name#string#应用名称(*)', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '1#操作成功&lt;br /&gt;0#操作失败&lt;br /&gt;-1#参数错误', '', '', '', '57', '150002104', '0', '1', '1450837897', '1450842870');
INSERT INTO `wiki_info` VALUES ('171', '添加黑名单', '', 'SNS_SDK::execute(&quot;private_message.add_to_blacklist&quot;, $param);', 'user_id#int#用户ID(*)&lt;br /&gt;black_user_id#string#被黑的用户ID(*)&lt;br /&gt;app_name#string#应用名称(*)', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '1#操作成功&lt;br /&gt;0#操作失败(记录已存在)&lt;br /&gt;-1#参数错误', '', '', '', '57', '150002104', '0', '1', '1450838073', '1451377630');
INSERT INTO `wiki_info` VALUES ('172', '获取用户全部黑名单', '', 'SNS_SDK::execute(&quot;private_message.get_user_black_list&quot;, $param);', 'user_id#int#用户ID(*)&lt;br /&gt;app_name#string#应用名称 (*)', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '-1#参数错误', '', 'http://xmen.yueus.com/wiki/upload/201512231041505l4vRt.png', '', '57', '150002104', '0', '1', '1450838510', '1450842890');
INSERT INTO `wiki_info` VALUES ('173', '检查用户是否在黑名单内', '', 'SNS_SDK::execute(&quot;private_message.check_is_in_black_list&quot;, $param);', 'user_id#int#用户ID(*)&lt;br /&gt;black_user_id#string#被黑的用户ID(*)&lt;br /&gt;app_name#string#应用名称(*)', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '1#在黑名单&lt;br /&gt;0#不在黑名单&lt;br /&gt;-1# 参数错误', '', '', '', '57', '150002104', '0', '1', '1450838836', '1450842900');
INSERT INTO `wiki_info` VALUES ('174', '删除黑名单', '', 'SNS_SDK::execute(&quot;private_message.del_black_list&quot;, $param);', 'user_id#int#用户ID(*)&lt;br /&gt;black_user_id#string#被黑的用户ID(*)&lt;br /&gt;app_name#string#应用名称(*)', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '1#操作成功&gt;&lt;br /&gt;0#操作失败(记录不存在) &lt;br /&gt;-1#参数错误', '', '', '', '57', '150002104', '0', '1', '1450839093', '1450842911');
INSERT INTO `wiki_info` VALUES ('175', '根据group_id获取成员信息', '', 'SNS_SDK::execute(&quot;private_message.get_pm_member_info_by_group_id&quot;, $param);', 'group_id#int#群组ID(*)&lt;br /&gt;app_name#string#应用名称(*)', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '-1#参数错误', '', 'http://xmen.yueus.com/wiki/upload/201512231102562Ybe3g.png', '', '57', '150002104', '0', '1', '1450839589', '1450842921');
INSERT INTO `wiki_info` VALUES ('176', '根据user_id获取未读消息数', '', 'SNS_SDK::execute(&quot;private_message.get_unread_count_by_user_id&quot;, $param);', 'user_id#int#用户ID(*)&lt;br /&gt;app_name#string#应用名称(*)', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '-1#参数错误', '', 'http://xmen.yueus.com/wiki/upload/20151223111059PZCH9A.png', '', '57', '150002104', '0', '1', '1450840259', '1451377656');
INSERT INTO `wiki_info` VALUES ('177', '帖子置顶', '', 'SNS_SDK::execute(\'quan.pub_thread_top\', $param);', '$param[\'thread_id\']#int#帖子ID&lt;br /&gt;$param[\'user_id\']#int#置顶操作会员ID', 'include \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '1#置顶成功&lt;br /&gt;0#置顶失败&lt;br /&gt;-1#参数错误', '', '', '', '47', '150002137', '80', '1', '1450841818', '1450841818');
INSERT INTO `wiki_info` VALUES ('178', '取消帖子置顶', '', 'SNS_SDK::execute(\'quan.del_thread_top\', $param);', '$param[\'thread_id\']#int#帖子ID&lt;br /&gt;$param[\'user_id\']#int#操作取消置顶的会员ID&lt;br /&gt;', 'include \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '1#操作成功&lt;br /&gt;0#操作失败&lt;br /&gt;-1#参数错误', '', '', '', '47', '150002137', '80', '1', '1450842015', '1450842015');
INSERT INTO `wiki_info` VALUES ('179', '收藏帖子', '', 'SNS_SDK::execute(\'quan.pub_thread_collect\', $param);', '$param[\'thread_id\']#int#帖子ID&lt;br /&gt;$param[\'user_id\']#int#会员ID', 'include \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '1#添加成功&lt;br /&gt;0#添加失败&lt;br /&gt;-1#参数错误&lt;br /&gt;-2#已收藏帖子', '', '', '', '47', '150002137', '80', '1', '1450855546', '1450855546');
INSERT INTO `wiki_info` VALUES ('180', '取消收藏帖子', '', 'SNS_SDK::execute(\'quan.del_thread_collect\', $param);', '$param[\'thread_id\']#int#帖子ID&lt;br /&gt;$param[\'user_id\']#int#会员ID', 'include \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '1#取消成功&lt;br /&gt;0#取消失败&lt;br /&gt;-1#参数错误', '', '', '', '47', '150002137', '80', '1', '1450855668', '1450855668');
INSERT INTO `wiki_info` VALUES ('181', '根据用户ID获取用户收藏的帖子列表', '', 'SNS_SDK::execute(\'article.get_thread_collect_list_by_user_id\', $param);', '$param[\'user_id\']#int#会员ID（*）&lt;br /&gt;$param[\'fields\']#array#获取字段控制，默认：获取所有字段&lt;br /&gt;$param[\'limit\']#string#获取数据限制，默认：\'0,20\'&lt;br /&gt;$param[\'b_select_count\']#boolean#是否查询数据量，默认：false&lt;br /&gt;$param[\'order_by\']#string#排序，默认 add_time DESC', 'include \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', 'int#查询圈子数量&lt;br /&gt;array#查询圈子列表', '关于返回帖子的数据说明&lt;br /&gt;被屏蔽的帖子也会返回，所以业务层那边要做好判断。&lt;br /&gt;帖子字段 status = 0 即是被屏蔽的帖子。', '', '', '47', '150002137', '80', '1', '1450855810', '1450856000');
INSERT INTO `wiki_info` VALUES ('182', 'POCO账号授权登录', '', 'SNS_SDK::execute(\'partner_login.poco_oauth_login\', $param);', '$param[\'poco_id\']#int#POCO用户ID（*）&lt;br /&gt;$param[\'password\']#string#POCO用户密码，明文（*）&lt;br /&gt;$param[\'app_name\']#string#APP的名称，由客户端传递（*）', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', 'code = 0#操作成功，数据如下&lt;br /&gt;data[user_id]#用户ID&lt;br /&gt;data[pwd_hash]#密码Hash&lt;br /&gt;data[nickname]#用户昵称&lt;br /&gt;code = -1#参数错误&lt;br /&gt;code = -2#POCO用户不存在&lt;br /&gt;code = -3#密码错误&lt;br /&gt;code = -4#创建账号失败&lt;br /&gt;code = -5#添加绑定失败', '', '', '', '56', '150002062', '0', '1', '1450862918', '1450862918');
INSERT INTO `wiki_info` VALUES ('183', '根据帖子ID数组获取帖子列表', '', 'SNS_SDK::execute(\'quan.get_thread_list_by_thread_ids\', $param);', '$param[\'thread_ids\']#array#帖子ID数组&lt;br /&gt;&lt;br /&gt;$param[\'fields\']#array#获取字段控制，默认：获取所有字段&lt;br /&gt;$param[\'limit\']#string#获取数据限制，默认：\'0,20\'&lt;br /&gt;$param[\'b_select_count\']#boolean#是否查询数据量，默认：false&lt;br /&gt;$param[\'order_by\']#string#排序，默认 is_top DESC,add_time DESC&lt;br /&gt;$param[\'status\']#int# 0:只获取已屏蔽帖子  1：只获取正常帖子 2：获取所有帖子 默认：1', 'include \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', 'int#返回查询数量&lt;br /&gt;array#列表信息', '', '', '', '47', '150002137', '80', '1', '1450924776', '1450924831');
INSERT INTO `wiki_info` VALUES ('184', '判断一组帖子是否被某个会员收藏', '', 'SNS_SDK::execute(\'quan.check_thread_ids_is_collect\', $param);', '$param[\'thread_ids\']#array#帖子数组&lt;br /&gt;$param[\'user_id\']#int#用户ID', 'include \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', 'array#返回已被收藏的帖子ID数组（如果没有任何一个被收藏，则空数组）', '', '', '', '47', '150002137', '80', '1', '1450925015', '1450925015');
INSERT INTO `wiki_info` VALUES ('187', '积分 - 创建动作', '', 'SNS_SDK::execute(&quot;credit.add_credit_action&quot;, $param);', 'act_tag#string#动作标签(*)&lt;br /&gt;act_name#string#动作名称(*)&lt;br /&gt;credit_value#string#积分值(*)&lt;br /&gt;rule#string#规则&lt;br /&gt;type#int#动作类型，默认：1 [1:加分-普通模式;2:加分-阶梯模式;3:加分-自定义积分模式;11:扣分-普通模式;12:扣分-自定义触发总积分减少模式;13:扣分-自定义积分模式]&lt;br /&gt;get_mode#int#获取模式，默认：0 [0-自动获取,1-领取]&lt;br /&gt;is_primary#int#是否一次性，默认：1 [0-否,1-是]&lt;br /&gt;get_template#string#领取通知模板', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '&gt;0#操作成功，返回动作ID&lt;br /&gt;-1#参数错误&lt;br /&gt;-2#动作标签名已存在&lt;br /&gt;-3#积分值不符合规则&lt;br /&gt;-4#积分规则不符合规则&lt;br /&gt;-5#动作类型不存在&lt;br /&gt;-6#积分消费动作不支持领取操作', '', '', '', '58', '150002104', '1', '1', '1451367669', '1455606737');
INSERT INTO `wiki_info` VALUES ('188', '积分 - 修改动作', '此修改不会对已生效的积分变动产生影响', 'SNS_SDK::execute(&quot;credit.update_credit_action&quot;, $param);', 'act_id#string#动作ID(*)&lt;br /&gt;options#array#修改信息&lt;br /&gt;　act_name#string#动作名称(*)&lt;br /&gt;　credit_value#string#积分值(*)&lt;br /&gt;　rule#string#规则&lt;br /&gt;　type#int#动作类型，[1:加分-普通模式;2:加分-阶梯模式;3:加分-自定义积分模式;11:扣分-普通模式;12:扣分-自定义触发总积分减少模式;13:扣分-自定义积分模式]&lt;br /&gt;　get_mode#int#获取模式， [0-自动获取,1-领取]&lt;br /&gt;　is_primary#int#是否一次性， [0-否,1-是]&lt;br /&gt;　get_template#string#领取通知模板', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '1#操作成功&lt;br /&gt;0#操作失败&lt;br /&gt;-1#参数错误&lt;br /&gt;-2#动作不存在&lt;br /&gt;-3#积分值不符合规则&lt;br /&gt;-4#积分规则不符合规则&lt;br /&gt;-5#动作类型不存在&lt;br /&gt;-6#积分消费动作不支持领取操作', '', '', '', '58', '150002104', '1', '1', '1451367861', '1455606752');
INSERT INTO `wiki_info` VALUES ('189', '积分 - 根据动作ID查询动作信息', '', 'SNS_SDK::execute(&quot;credit.get_credit_action_by_act_id&quot;, $param);', 'act_id#int#动作ID(*)', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '-1#参数缺失', '', '', '', '58', '150002104', '1', '1', '1451368976', '1455606763');
INSERT INTO `wiki_info` VALUES ('190', '积分 - 根据动作tag查询动作信息', '', 'SNS_SDK::execute(&quot;credit.get_credit_action_by_act_tag&quot;, $param);', 'act_tag#string#动作tag(*)', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '-1#参数缺失', '', '', '', '58', '150002104', '1', '1', '1451369023', '1455606781');
INSERT INTO `wiki_info` VALUES ('191', '积分 - 获取动作信息列表', '', 'SNS_SDK::execute(&quot;credit.get_credit_action_list&quot;, $param);', 'where#string#查询条件，默认：null&lt;br /&gt;orderby#string#排序，默认：act_id ASC&lt;br /&gt;limit#string#限制，默认：0,20&lt;br /&gt;b_select_count#bool#是否查询数据量，默认：false', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', 'Array#Array', '', '', '', '58', '150002104', '1', '1', '1451369089', '1455606789');
INSERT INTO `wiki_info` VALUES ('192', '积分 - 根据用户ID查询积分信息', '', 'SNS_SDK::execute(&quot;credit.get_user_credit_by_user_id&quot;, $param);', 'user_id#int#用户ID(*)', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '-1#参数缺失', '', '', '', '58', '150002104', '1', '1', '1451369123', '1455606797');
INSERT INTO `wiki_info` VALUES ('193', '积分 - 积分收入操作', '', 'SNS_SDK::execute(&quot;credit.credit_income&quot;, $param);', 'act_tag#string#动作tag(*)&lt;br /&gt;user_id#int#用户ID(*)&lt;br /&gt;operator_id#int#操作者ID(*)&lt;br /&gt;item_id#string#事件唯一标签(一般为文章id或者项目id)&lt;br /&gt;notice_custom#array#通知自定义内容&lt;br /&gt;custom_value#int#自定义积分&lt;br /&gt;execute_type#int#执行类型，默认：1 [0-同步,1-异步]', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '1#操作成功&lt;br /&gt;0#操作失败&lt;br /&gt;-1#参数错误&lt;br /&gt;-2#动作无效&lt;br /&gt;-3#非积分收入动作&lt;br /&gt;-4#动作配置错误&lt;br /&gt;-5#没有达到积分获取要求&lt;br /&gt;-6#该积分已领取过&lt;br /&gt;异步模式返回#*&lt;br /&gt;101#异步提交成功&lt;br /&gt;-100#异步提交失败&lt;br /&gt;-101#异步参数错误', '', '', '', '58', '150002104', '1', '1', '1451369192', '1455606808');
INSERT INTO `wiki_info` VALUES ('194', '根据关键词获取圈子列表', '', 'SNS_SDK::execute(\'quan.get_quan_list_by_keywords\', $param);', '$param[\'keywords\']#string#搜索的关键词&lt;br /&gt;$param[\'limit\']#string#数据偏移量 默认 \'0,20\'', 'include \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', 'array(\'total\'=&gt;, \'data\'=&gt;)', '返回数据说明##&lt;br /&gt;$ret[\'total\']#int#命中数量&lt;br /&gt;$ret[\'data\']#array#圈子列表', '', '', '47', '150002137', '100', '1', '1451381580', '1451381638');
INSERT INTO `wiki_info` VALUES ('195', '根据关键词获取帖子列表', '', 'SNS_SDK::execute(\'quan.get_thread_list_by_keywords\', $param);', '$param[\'keywords\']#string#搜索的关键词&lt;br /&gt;$param[\'order_by\']#string#排序 ，默认 \'add_time DESC\'  可选择排序方式 is_top,post_count,like_count,view_count,collect_count,add_time,update_time&lt;br /&gt;$param[\'limit\']#string#数据偏移量 默认 \'0,20\'', 'include \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', 'array(\'total\'=&gt;, \'data\'=&gt;)', '返回数据说明##&lt;br /&gt;$ret[\'total\']#int#命中数量&lt;br /&gt;$ret[\'data\']#array#圈子列表', '', '', '47', '150002137', '80', '1', '1451381864', '1451891813');
INSERT INTO `wiki_info` VALUES ('196', '获取阿里云OSS服务Token信息', '', 'http://jk.poco.cn/api/v1/get_aliyun_oss_upload_token_api.php', 'user_id#int#用户ID（*）&lt;br /&gt;access_token#string#登录授权Token（*）', 'API调用，支持GET或POST，使用通信协议', 'ret_code =  0#操作成功&lt;br /&gt;ret_code = -1#参数错误&lt;br /&gt;ret_code = -2#获取Token失败', '字段#说明&lt;br /&gt;upload_token过期时间#1小时过期', 'http://xmen.yueus.com/wiki/upload/20151230170043Zmvkck.jpg', '', '50', '150002062', '0', '1', '1451466043', '1451466169');
INSERT INTO `wiki_info` VALUES ('197', '获取七牛OSS服务Token信息', '', 'http://jk.poco.cn/api/v1/get_qiniu_oss_upload_token_api.php', 'user_id#int#用户ID（*）&lt;br /&gt;access_token#string#登录Token（*）', 'API调用，支持GET或POST，使用通信协议', 'ret_code =  0#操作成功&lt;br /&gt;ret_code = -1#参数错误&lt;br /&gt;ret_code = -2#获取Token失败', '', 'http://xmen.yueus.com/wiki/upload/20160106092521yHDWhS.jpg', '', '50', '150002062', '0', '1', '1451552414', '1452043521');
INSERT INTO `wiki_info` VALUES ('198', '添加圈子管理员', '', 'SNS_SDK::execute(\'quan.add_quan_manager\', $param);', '$param[\'user_id\']#int#成员ID&lt;br /&gt;$param[\'quan_id\']#int#圈子ID', 'include \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '1#添加成功&lt;br /&gt;0#添加失败&lt;br /&gt;-1#参数错误', '', '', '', '47', '150002137', '90', '1', '1451880975', '1451880975');
INSERT INTO `wiki_info` VALUES ('199', '删除圈子管理员', '', 'SNS_SDK::execute(\'quan.del_quan_manager\', $param);', '$param[\'user_id\']#int#成员ID&lt;br /&gt;$param[\'quan_id\']#int#圈子ID', 'include \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '1#删除成功&lt;br /&gt;0#删除失败&lt;br /&gt;-1#参数错误', '', '', '', '47', '150002137', '90', '1', '1451881090', '1451881112');
INSERT INTO `wiki_info` VALUES ('200', '根据圈子ID获取管理员列表', '', 'SNS_SDK::execute(\'quan.get_manager_list_by_quan_id\', $param);', '$param[\'quan_id\']#int#圈子ID（*）&lt;br /&gt;$param[\'limit\']#string#获取数据限制，默认：\'0,20\'&lt;br /&gt;$param[\'b_select_count\']#boolean#是否查询数据量，默认：false&lt;br /&gt;$param[\'order_by\']#string#排序，默认 add_time DESC', 'include \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', 'int#查询管理员数量&lt;br /&gt;array#查询管理员列表', '', '', '', '47', '150002137', '90', '1', '1451881287', '1451881287');
INSERT INTO `wiki_info` VALUES ('201', '积分 - 积分消费操作', '', 'SNS_SDK::execute(&quot;credit.credit_consume&quot;, $param);', 'act_tag#string#动作tag(*)&lt;br /&gt;user_id#int#用户ID(*)&lt;br /&gt;operator_id#int#操作者ID(*)&lt;br /&gt;custom_value#int#自定义积分&lt;br /&gt;execute_type#int#执行类型，默认：0 [0-同步,1-异步]', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '1#操作成功&lt;br /&gt;0#操作失败&lt;br /&gt;-1#参数错误&lt;br /&gt;-2#动作无效&lt;br /&gt;-3#非积分消费动作&lt;br /&gt;-4#不支持的积分类型（仅支持type 11,12,13）&lt;br /&gt;-5#积分不足&lt;br /&gt;-6#自定义积分错误', '', '', '', '58', '150002104', '1', '1', '1451966565', '1455606818');
INSERT INTO `wiki_info` VALUES ('202', '积分 - 获取日志列表', '', 'SNS_SDK::execute(&quot;credit.get_credit_log_list&quot;, $param);', 'month#int#月份，默认当前月份，格式：201601&lt;br /&gt;where#string#查询条件，默认：null&lt;br /&gt;orderby#string#排序，默认：log_id DESC&lt;br /&gt;limit#string#限制，默认：0,20&lt;br /&gt;b_select_count#bool#是否查询数据量，默认：false', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', 'array#array', '', '', '', '58', '150002104', '1', '1', '1451966915', '1455606827');
INSERT INTO `wiki_info` VALUES ('203', '根据帖子ID获取跟帖列表', '', 'SNS_SDK::execute(\'quan.get_follow_thread_by_thread_id\', $param);', '$param[\'thread_id\']#int#帖子ID（*）&lt;br /&gt;$param[\'fields\']#array#获取字段控制，默认：获取所有字段&lt;br /&gt;$param[\'limit\']#string#获取数据限制，默认：\'0,20\'&lt;br /&gt;$param[\'b_select_count\']#boolean#是否查询数据量，默认：false&lt;br /&gt;$param[\'order_by\']#string#排序，默认 is_top DESC,add_time DESC&lt;br /&gt;$param[\'status\']#int# 0:只获取已屏蔽帖子  1：只获取正常帖子 2：获取所有帖子 默认：1', 'include \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', 'int#查询圈子数量&lt;br /&gt;array#查询圈子列表', '', '', '', '47', '150002137', '80', '1', '1451982991', '1451982991');
INSERT INTO `wiki_info` VALUES ('204', '清除用户坐标', '', 'SNS_SDK::execute(&quot;member.del_coordinate_by_user_id&quot;, $param);', 'user_id#int#用户ID', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '-1#参数错误', '', '', '', '31', '150002104', '0', '1', '1452129354', '1452129354');
INSERT INTO `wiki_info` VALUES ('205', '用户举报', '', 'http://jk.poco.cn/api/v1/jane_plus/user_report_api.php', 'user_id#int#用户ID（可选）&lt;br /&gt;nickname#string#举报人昵称（可选）&lt;br /&gt;content#string#举报内容（*）', 'API调用，支持GET或POST，使用通信协议', 'ret_code =  0#创建成功&lt;br /&gt;ret_code = -1#参数错误', '', '', '', '54', '150002062', '0', '1', '1452153164', '1452153164');
INSERT INTO `wiki_info` VALUES ('206', '积分 - 领取积分', '', 'SNS_SDK::execute(&quot;credit.set_credit_to_get&quot;, $param);', 'user_id#int#用户ID(*)&lt;br /&gt;receive_id#int#积分包ID(*)&lt;br /&gt;', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '1#操作成功&lt;br /&gt;0#操作失败&lt;br /&gt;-1#参数错误&lt;br /&gt;-2#积分包不存在&lt;br /&gt;-3#该积分已领取过', '', '', '', '58', '150002104', '1', '1', '1452158036', '1455606836');
INSERT INTO `wiki_info` VALUES ('207', '获取在线用户列表', '', 'SNS_SDK::execute(\'member.get_online_members\', $param);', 'user_id#int#当前用户ID（可选）&lt;br /&gt;limit#string#翻页限制，默认：\'0,1000\'&lt;br /&gt;b_get_relative#boolean#是否获取好友关系，默认：false', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', 'array#用户列表', '', 'http://xmen.yueus.com/wiki/upload/20160107180825NWKLOB.jpg', '', '31', '150002062', '0', '1', '1452161306', '1452161306');
INSERT INTO `wiki_info` VALUES ('210', '根据location_id获取地理位置信息', '', 'SNS_SDK::execute(&quot;member.get_location_info_by_location_id&quot;, $param);', 'location_id#int#位置ID', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '-1#参数错误', '', 'http://xmen.yueus.com/wiki/upload/20160108175203wLGmSF.png', '', '31', '150002104', '0', '1', '1452245373', '1452246723');
INSERT INTO `wiki_info` VALUES ('208', '积分 - 获取积分领取列表', '', 'SNS_SDK::execute(&quot;credit.get_credit_receive_list&quot;, $param);', 'user_id#int#用户ID(*)&lt;br /&gt;type_str#string#类型，默认：all [all:全部],[unget:未领取],[got:已领取]&lt;br /&gt;limit#string#限制，默认：0,20&lt;br /&gt;orderby#string#排序，默认：receive_id DESC&lt;br /&gt;b_select_count#bool#获取数量，默认：false', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '-1#参数错误', '', '', '', '58', '150002104', '1', '1', '1452234050', '1455606846');
INSERT INTO `wiki_info` VALUES ('209', '根据位置名称获取地理位置信息', '', 'SNS_SDK::execute(&quot;member.get_location_info_by_location_name&quot;, $param);', 'location_name#string#位置名称', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '-1#参数错误', '', 'http://xmen.yueus.com/wiki/upload/20160108175154dNqLUM.png', '', '31', '150002104', '0', '1', '1452245343', '1452246714');
INSERT INTO `wiki_info` VALUES ('211', '获取顶级城市列表', '', 'SNS_SDK::execute(&quot;member.get_top_location_list&quot;, $param);', 'orderby#string#排序，默认：null&lt;br /&gt;limit#string#限制，默认：0,20&lt;br /&gt;b_select_count#bool#是否查询数据量，默认：false', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '-1#参数错误', '', 'http://xmen.yueus.com/wiki/upload/20160108175213X00O8T.png', '', '31', '150002104', '0', '1', '1452245416', '1453276605');
INSERT INTO `wiki_info` VALUES ('212', '根据location_id获取下级城市列表', '', 'SNS_SDK::execute(&quot;member.get_child_location_list&quot;, $param);', 'location_id#int#位置ID&lt;br /&gt;orderby#string#排序，默认：null&lt;br /&gt;limit#string#限制，默认：0,20&lt;br /&gt;b_select_count#bool#是否查询数据量，默认：false', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '-1#参数错误', '', 'http://xmen.yueus.com/wiki/upload/20160108175223O47w9F.png', '', '31', '150002104', '0', '1', '1452245478', '1453276693');
INSERT INTO `wiki_info` VALUES ('213', '获取地理位置信息列表', '', 'SNS_SDK::execute(&quot;member.get_location_info_list&quot;, $param);', 'where#string#查询条件，默认：null&lt;br /&gt;orderby#string#排序，默认：null&lt;br /&gt;limit#string#限制，默认：0,20&lt;br /&gt;b_select_count#bool#是否查询数据量，默认：false', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '-1#参数错误', '', '', '', '31', '150002104', '0', '1', '1452245515', '1453276681');
INSERT INTO `wiki_info` VALUES ('214', '根据用户ID获取帖子列表', '', 'SNS_SDK::execute(\'quan.get_thread_list_by_user_id\', $param);', '$param[\'user_id\']#int#用户ID（*）&lt;br /&gt;$param[\'fields\']#array#获取字段控制，默认：获取所有字段&lt;br /&gt;$param[\'limit\']#string#获取数据限制，默认：\'0,20\'&lt;br /&gt;$param[\'b_select_count\']#boolean#是否查询数据量，默认：false&lt;br /&gt;$param[\'b_get_follow\']#boolean#false:只返回主贴，true：只返回跟帖，默认：null 返回主贴和跟帖&lt;br /&gt;$param[\'order_by\']#string#排序，默认 add_time DESC&lt;br /&gt;$param[\'status\']#int# 0:只获取已屏蔽帖子  1：只获取正常帖子 2：获取所有帖子 默认：1', 'include \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', 'int#查询帖子数量&lt;br /&gt;array#查询帖子列表', '', '', '', '47', '150002137', '80', '1', '1452579516', '1452579516');
INSERT INTO `wiki_info` VALUES ('215', '获取瑞新云服务器授权Token', '', 'http://jk.poco.cn/api/v1/get_beauty_oss_upload_token_api.php', 'user_id#int#用户ID', 'API调用，支持GET或POST，使用通信协议', 'ret_code =  0#操作成功&lt;br /&gt;ret_code = -1#参数错误&lt;br /&gt;ret_code = -2#获取Token失败', '', 'http://xmen.yueus.com/wiki/upload/201601131715490e4nTb.jpg', '', '50', '150002062', '0', '1', '1452591679', '1452676549');
INSERT INTO `wiki_info` VALUES ('216', '作品点赞', '该接口已经封装了更新作品点赞统计数', 'SNS_SDK::execute(\'article.add_like\', $param);', '$param[\'art_id\']#int#作品ID（*）&lt;br /&gt;$param[\'user_id\']#int#用户ID（*）', 'include \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '1#点赞成功&lt;br /&gt;0#点赞失败&lt;br /&gt;-1#参数错误&lt;br /&gt;-2#作品不存在&lt;br /&gt;-3#更新作品统计统计失败', '', '', '', '27', '150002063', '0', '1', '1452653522', '1452672984');
INSERT INTO `wiki_info` VALUES ('217', '取消作品点赞', '', 'SNS_SDK::execute(\'article.del_like\', $param);', '$param[\'art_id\']#int#作品ID（*）&lt;br /&gt;$param[\'user_id\']#int#用户ID（*）', 'include \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '1#取消成功&lt;br /&gt;0#取消失败&lt;br /&gt;-1#参数错误&lt;br /&gt;-2#作品不存在&lt;br /&gt;-3#更新作品统计统计失败', '', '', '', '27', '150002063', '0', '1', '1452653630', '1452653630');
INSERT INTO `wiki_info` VALUES ('220', '投票', '', 'SNS_SDK::execute(\'quan.pub_vote\', $param);', '$param[\'thread_id\']#int#帖子（投票贴）ID(*)&lt;br /&gt;$param[\'user_id\']#int#会员（没有要求是圈子成员）(*)&lt;br /&gt;$param[\'vote_item\']#array()#投票项的ID（即在帖子详细里面的  $thread_info[\'vote_itme\'][0][\'item_id\']）(数组不能为空，每个元素必须在投票项里面)', 'include \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '1#操作成功&lt;br /&gt;0#操作失败&lt;br /&gt;-1#参数错误&lt;br /&gt;-2#已经投票', '', '', '', '47', '150002137', '80', '1', '1453791423', '1453791423');
INSERT INTO `wiki_info` VALUES ('221', '获取会员对某个投票贴的投票情况', '', 'SNS_SDK::execute(\'quan.get_vote_record_info\', $param);', '$param[\'thread_id\']#int#投票帖子ID&lt;br /&gt;$param[\'user_id\']#int#会员ID', 'include \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', 'false#未投票&lt;br /&gt;array#\'thread_id\'：帖子ID, \'user_id\'：用户ID, \'vote_item\'：数组，投票所选的项, \'add_time\'：投票时间', '', '', '', '47', '150002137', '80', '1', '1453791834', '1453791834');
INSERT INTO `wiki_info` VALUES ('266', '发送IM消息', '该接口自动会处理走离线还是在线的通道', 'SNS_SDK::execute(\'common.send_im_message\', $param);', 'identify#string#发送者ID（*）&lt;br /&gt;to_user_id#string#接收者ID（*）&lt;br /&gt;msg_type#string#消息的类型，分为：\'text\'（*）&lt;br /&gt;txt_content#string#消息内容（*）', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', 'code =  0#操作成功&lt;br /&gt;code = -1#参数错误&lt;br /&gt;code = -2#消息类型对应的参数错误&lt;br /&gt;code = -3#获取授权失败&lt;br /&gt;code = -4#请求数据错误', '', '', '', '41', '150002062', '0', '1', '1455863155', '1455863155');
INSERT INTO `wiki_info` VALUES ('223', '获取一个空闲的房间ID', '', 'SNS_SDK::execute(\'common.get_chatroom_free_room_id\')', '不需要参数', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '空闲的房间ID', '', '', '', '41', '150002062', '0', '1', '1453885473', '1453885768');
INSERT INTO `wiki_info` VALUES ('224', '更换一个空闲的房间ID', '', 'SNS_SDK::execute(\'common.change_chatroom_free_room_id\', $param)', 'cur_room_id#int#当前的房间ID（*）', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '空闲的房间ID', '', '', '', '41', '150002062', '0', '1', '1453885590', '1453885590');
INSERT INTO `wiki_info` VALUES ('225', '获取全部的房间列表', '', 'SNS_SDK::execute(\'common.get_chatroom_all_room_list\')', '不需要参数', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '全部的房间列表', '', '', '', '41', '150002062', '0', '1', '1453885742', '1453885742');
INSERT INTO `wiki_info` VALUES ('226', '用户绑定手机号', '', 'SNS_SDK::execute(\'member.bind_mobile_by_user_id\', $param)', 'user_id#int#用户ID（*）&lt;br /&gt;mobile#int#手机号码（*）&lt;br /&gt;zone_num#int#国家区号，默认：86&lt;br /&gt;password#string#用户密码，明文，若传递则执行更新用户密码的操作', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', 'code =  0#操作成功&lt;br /&gt;code = -1#参数错误&lt;br /&gt;code = -2#手机号错误&lt;br /&gt;code = -3#用户不存在&lt;br /&gt;code = -4#手机号已经被绑定&lt;br /&gt;code = -5#用户已经绑定过手机号&lt;br /&gt;code = -6#绑定失败&lt;br /&gt;code = -7#更新用户密码失败', '', '', '', '31', '150002062', '0', '1', '1453890734', '1453890734');
INSERT INTO `wiki_info` VALUES ('227', '队列 - 队列执行', '', 'SNS_SDK::execute(&quot;credit.queue_execute&quot;, $param);', 'exec_count#int#执行数量，默认：100 (0为全部执行)', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '1#执行成功&lt;br /&gt;0#队列为空&lt;br /&gt;-1#参数错误', '', '', '', '58', '150002104', '0', '1', '1454050045', '1455606865');
INSERT INTO `wiki_info` VALUES ('228', '获取七牛ZIP包OSS服务Token信息', '', 'http://jk.poco.cn/api/v1/get_qiniu_oss_extract_token_api.php', 'user_id#int#用户ID', 'API调用，支持GET或POST，使用通信协议', 'ret_code =  0#操作成功&lt;br /&gt;ret_code = -1#参数错误&lt;br /&gt;ret_code = -2#生成目录ID失败&lt;br /&gt;ret_code = -3#获取Token失败', '', '', '', '50', '150002062', '0', '0', '1454056267', '1454057275');
INSERT INTO `wiki_info` VALUES ('229', '解压七牛的压缩包', '', 'http://jk.poco.cn/api/v1/qiniu_oss_unzip_api.php', 'user_id#int#用户ID（*）&lt;br /&gt;prefix#string#压缩包目录前缀（*）&lt;br /&gt;key#string#压缩包的名称（*）', 'API调用，支持GET或POST，使用通信协议', 'ret_code =  0#操作成功&lt;br /&gt;ret_code = -1#参数错误&lt;br /&gt;ret_code = -2#解压失败', '', '', '', '50', '150002062', '0', '1', '1454056585', '1454056585');
INSERT INTO `wiki_info` VALUES ('230', '获取七牛OSS服务Token信息（V2版本）', '', 'http://jk.poco.cn/api/v1/get_qiniu_oss_upload_token_v2_api.php', 'user_id#int#用户ID', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', 'ret_code =  0#操作成功&lt;br /&gt;ret_code = -1#参数错误&lt;br /&gt;ret_code = -2#生成目录ID失败&lt;br /&gt;ret_code = -3#获取Token失败', '', '', '', '50', '150002062', '0', '1', '1454057332', '1454057332');
INSERT INTO `wiki_info` VALUES ('231', '查询用户ID是否绑定手机', '', 'SNS_SDK::execute(&quot;member.check_mobile_bind_by_user_id&quot;, $param);', 'user_id#int#用户ID', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '-1#参数错误', '', 'http://xmen.yueus.com/wiki/upload/20160202162728chLJhp.png', '', '31', '150002104', '0', '1', '1454397092', '1454401648');
INSERT INTO `wiki_info` VALUES ('232', '查询用户绑定第三方绑定情况', '', 'SNS_SDK::execute(\'partner_login.check_partner_bind_by_user_id\', $param);', 'user_id#int#用户ID(*)&lt;br /&gt;partner#string#第三方类型，默认：sina,qq,weixin_open [可选：poco,sina,qq,qzone,weixin_open,facebook]', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '-1#参数错误', '', 'http://xmen.yueus.com/wiki/upload/20160202162501EDPeof.png', '', '56', '150002104', '0', '1', '1454401176', '1454401721');
INSERT INTO `wiki_info` VALUES ('233', '获取短信日志列表', '', 'SNS_SDK::execute(&quot;common.get_sms_send_log_list&quot;, $param);', 'where#string#查询条件，默认：\'\'&lt;br /&gt;orderby#string#排序，默认：\'add_time ASC\'&lt;br /&gt;limit#string#获取数据限制，默认：\'0,20\'&lt;br /&gt;b_select_count#bool#是否查询数据量，默认：false', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', 'array# ', '', '', '', '41', '150002104', '0', '1', '1454466603', '1454466603');
INSERT INTO `wiki_info` VALUES ('234', '获取短信统计列表', '', 'SNS_SDK::execute(&quot;common.get_sms_send_stat_list&quot;, $param);', 'where#string#查询条件，默认：\'\'&lt;br /&gt;orderby#string#排序，默认：\'last_send_time DESC\'&lt;br /&gt;limit#string#获取数据限制，默认：\'0,20\'&lt;br /&gt;b_select_count#bool#是否查询数据量，默认：false', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', 'array# ', '', '', '', '41', '150002104', '0', '1', '1454466819', '1454565374');
INSERT INTO `wiki_info` VALUES ('235', '队列 - 添加队列', '', 'SNS_SDK::execute(&quot;notice.add_notice_push_queue&quot;, $param);', 'to_user_id#int#接收用户ID', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '1#操作成功&lt;br /&gt;0#操作失败&lt;br /&gt;-1#参数缺失', '', '', '', '53', '150002104', '0', '1', '1454550256', '1454556212');
INSERT INTO `wiki_info` VALUES ('236', '队列 - 更新队列状态', '', 'SNS_SDK::execute(&quot;notice.update_push_queue_status_by_queue_id&quot;, $param);', 'queue_id#int#队列ID&lt;br /&gt;status#string#状态', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '1#操作成功&lt;br /&gt;0#操作失败&lt;br /&gt;-1#参数缺失', '', '', '', '53', '150002104', '0', '1', '1454550312', '1454556220');
INSERT INTO `wiki_info` VALUES ('237', '队列 - 查询队列列表', '', 'SNS_SDK::execute(&quot;notice.get_push_queue_list&quot;, $param);', 'where#string#查询条件，默认：\'\'&lt;br /&gt;orderby#string#排序，默认：\'queue_id ASC\'&lt;br /&gt;limit#string#获取数据限制，默认：\'0,20\'&lt;br /&gt;b_select_count#bool#是否查询数据量，默认：false', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', 'array# ', '', '', '', '53', '150002104', '0', '1', '1454550359', '1454556231');
INSERT INTO `wiki_info` VALUES ('238', '统计 - 根据用户ID查询未读统计', '', 'SNS_SDK::execute(&quot;notice.get_unread_stat_by_user_id&quot;, $param);', 'user_id#int#用户ID&lt;br /&gt;type#string#消息类型(可多个，用,分隔) 默认:all', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '-1#参数缺失&lt;br /&gt;-2#无效的消息类型', '', '', '', '53', '150002104', '0', '1', '1454552803', '1454555369');
INSERT INTO `wiki_info` VALUES ('239', '礼品 - 添加礼品', '', 'SNS_SDK::execute(&quot;credit.add_gift&quot;, $param);', 'name#string#礼品名(*)&lt;br /&gt;summary#string#礼品描述&lt;br /&gt;credit_value#string#礼品积分(*)&lt;br /&gt;cover_img_url#int#礼品封面&lt;br /&gt;status#int#礼品状态，默认：1 [0-关闭,1-开启]', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '&gt;0#操作成功，返回礼品ID&lt;br /&gt;-1#参数错误', '', '', '', '58', '150002104', '0', '1', '1455423316', '1455423716');
INSERT INTO `wiki_info` VALUES ('240', '礼品 - 更新礼品', '', 'SNS_SDK::execute(&quot;credit.update_gift&quot;, $param);', 'gift_id#int#礼品ID(*)&lt;br /&gt;options#array#修改信息&lt;br /&gt;　name#string#礼品名&lt;br /&gt;　summary#string#礼品描述&lt;br /&gt;　credit_value#string#礼品积分&lt;br /&gt;　cover_img_url#int#礼品封面&lt;br /&gt;　status#int#礼品状态 [0-关闭,1-开启]', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '1#操作成功&lt;br /&gt;0#操作失败&lt;br /&gt;-1#参数错误&lt;br /&gt;-2#礼品不存在', '', '', '', '58', '150002104', '0', '1', '1455423388', '1455423412');
INSERT INTO `wiki_info` VALUES ('241', '礼品 - 根据ID查询礼品信息', '', 'SNS_SDK::execute(&quot;credit.get_gift_info_by_gift_id&quot;, $param);', 'gift_id#int#礼品ID(*)&lt;br /&gt;b_use_cache#bool#使用缓存，默认true', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '-1#参数缺失', '', '', '', '58', '150002104', '0', '1', '1455424226', '1455503978');
INSERT INTO `wiki_info` VALUES ('242', '礼品 - 获取礼品信息列表', '', 'SNS_SDK::execute(&quot;credit.get_gift_info_list&quot;, $param);', 'where#string#查询条件，默认：null&lt;br /&gt;orderby#string#排序，默认：gift_id DESC&lt;br /&gt;limit#string#限制，默认：0,20&lt;br /&gt;b_select_count#bool#是否查询数据量，默认：false', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', 'array#', '', '', '', '58', '150002104', '0', '1', '1455424268', '1455424268');
INSERT INTO `wiki_info` VALUES ('243', '礼品 - 礼品兑换', '', 'SNS_SDK::execute(&quot;credit.gift_exchange&quot;, $param);', 'user_id#int#用户ID(*)&lt;br /&gt;gift_id#int#礼品ID(*)&lt;br /&gt;operator_id#int#操作者ID(*)', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', 'msg#返回信息&lt;br /&gt;data#返回数据&lt;br /&gt;code#返回代码&lt;br /&gt;code = 1#操作成功，返回记录ID&lt;br /&gt;code = 0#操作失败&lt;br /&gt;code = -1#参数错误&lt;br /&gt;code = -2#礼品不存在&lt;br /&gt;code = -3#积分不足', '', '', '', '58', '150002104', '0', '1', '1455438597', '1455585811');
INSERT INTO `wiki_info` VALUES ('244', '礼品 - 获取礼品领取列表', '', 'SNS_SDK::execute(&quot;credit.get_gift_exchange_list&quot;, $param);', 'user_id#int#用户ID，默认：0，默认则不使用该条件&lt;br /&gt;date_range#string#日期范围，默认：null，eg:\'1455465600-1455552000\'，默认则不使用该条件&lt;br /&gt;orderby#string#排序，默认：log_id DESC&lt;br /&gt;limit#string#限制，默认：0,20&lt;br /&gt;b_select_count#bool#是否查询数据量，默认：false', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', 'array# ', '', '', '', '58', '150002104', '0', '1', '1455438645', '1455504328');
INSERT INTO `wiki_info` VALUES ('245', '积分 - 积分充值与冲减', '', 'SNS_SDK::execute(&quot;credit.recharge_and_write_down&quot;, $param);', 'type#int#操作类型(*) [1-积分充值,2-积分补偿,3-积分补扣(扣除总积分),4-积分代消费(不扣除总积分)]&lt;br /&gt;user_id#int#用户ID(*)&lt;br /&gt;operator_id#int#操作者ID(*)&lt;br /&gt;credit_value#int#积分值(*)&lt;br /&gt;log_remark#string#日志备注', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '1#操作成功&lt;br /&gt;0#操作失败&lt;br /&gt;-1#参数错误&lt;br /&gt;-2#非法操作类型', '', '', '', '58', '150002104', '1', '1', '1455606980', '1455607505');
INSERT INTO `wiki_info` VALUES ('246', '添加频道', '', 'SNS_SDK::execute(&quot;best_pocoers.add_channel&quot;, $param);', 'channel_name#string#频道名&lt;br /&gt;remark#string#备注', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '&gt;0#操作成功,返回channel_id&lt;br /&gt;0#操作失败&lt;br /&gt;-1#参数缺失', '', '', '', '59', '150002104', '0', '1', '1455697952', '1455697952');
INSERT INTO `wiki_info` VALUES ('247', '更新频道', '', 'SNS_SDK::execute(&quot;best_pocoers.update_channel&quot;, $param);', 'channel_id#int#频道ID&lt;br /&gt;options#array#更新内容', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '1#操作成功&lt;br /&gt;0#操作失败&lt;br /&gt;-1#参数缺失&lt;br /&gt;-2#没有数据更新', '', '', '', '59', '150002104', '0', '1', '1455698079', '1455698079');
INSERT INTO `wiki_info` VALUES ('248', '根据频道ID删除频道', '', 'SNS_SDK::execute(&quot;best_pocoers.del_channel_by_channel_id&quot;, $param);', 'channel_id#int#频道ID', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '1#操作成功&lt;br /&gt;0#操作失败&lt;br /&gt;-1#参数缺失&lt;br /&gt;-2#该频道下存在榜单，无法删除', '', '', '', '59', '150002104', '0', '1', '1455698156', '1455698156');
INSERT INTO `wiki_info` VALUES ('249', '根据频道ID查询频道信息', '', 'SNS_SDK::execute(&quot;best_pocoers.get_channel_by_channel_id&quot;, $param);', 'channel_id#int#频道ID&lt;br /&gt;b_use_cache#bool#是否使用缓存，默认：true', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', 'array#', '', '', '', '59', '150002104', '0', '1', '1455699647', '1455699647');
INSERT INTO `wiki_info` VALUES ('250', '获取频道列表', '', 'SNS_SDK::execute(&quot;best_pocoers.get_channel_list&quot;, $param);', 'limit#string#获取数目，默认：0,20&lt;br /&gt;orderby#string#排序，默认：channel_id ASC', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', 'array#', '', '', '', '59', '150002104', '0', '1', '1455699723', '1455699723');
INSERT INTO `wiki_info` VALUES ('251', '添加榜单', '', 'SNS_SDK::execute(&quot;best_pocoers.add_rank&quot;, $param);', 'channel_id#int#频道ID&lt;br /&gt;rank_name#string#榜单名&lt;br /&gt;rank_url#string#榜单URL&lt;br /&gt;cover_img_url#string#榜单封面&lt;br /&gt;post_date#int#发布日期&lt;br /&gt;remark#string#备注&lt;br /&gt;sort_order#int#排序，默认：0', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '&gt;0#操作成功,返回rank_id&lt;br /&gt;0#操作失败&lt;br /&gt;-1#参数缺失&lt;br /&gt;-2#频道不存在', '', '', '', '59', '150002104', '0', '1', '1455699756', '1455700313');
INSERT INTO `wiki_info` VALUES ('261', '添加榜单内容', '', 'SNS_SDK::execute(&quot;best_pocoers.add_record&quot;, $param);', 'issue_id#int#发行期ID&lt;br /&gt;rank_id#int#榜单ID&lt;br /&gt;channel_id#int#频道ID&lt;br /&gt;place_number#int#位置编号&lt;br /&gt;user_id#int#用户ID&lt;br /&gt;title#int#标题&lt;br /&gt;img_url#int#图片url&lt;br /&gt;link_url#int#链接url&lt;br /&gt;content#int#内容&lt;br /&gt;remark#int#备注&lt;br /&gt;admin_user_id#int#管理员ID', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '&gt;0#操作成功,返回log_id&lt;br /&gt;0#操作失败&lt;br /&gt;-1#参数缺失&lt;br /&gt;-2#发行期不存在', '', '', '', '59', '150002104', '0', '1', '1455765551', '1455765551');
INSERT INTO `wiki_info` VALUES ('252', '更新榜单', '', 'SNS_SDK::execute(&quot;best_pocoers.update_rank&quot;, $param);', 'rank_id#int#榜单ID&lt;br /&gt;options#array#更新内容', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '1#操作成功&lt;br /&gt;0#操作失败&lt;br /&gt;-1#参数缺失&lt;br /&gt;-2#没有数据更新&lt;br /&gt;-3#频道不存在', '', '', '', '59', '150002104', '0', '1', '1455699784', '1455699784');
INSERT INTO `wiki_info` VALUES ('253', '根据榜单ID删除榜单', '', 'SNS_SDK::execute(&quot;best_pocoers.del_rank_by_rank_id&quot;, $param);', 'rank_id#int#榜单ID', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '1#操作成功&lt;br /&gt;0#操作失败&lt;br /&gt;-1#参数缺失&lt;br /&gt;-2#该榜单下存在发行期，无法删除', '', '', '', '59', '150002104', '0', '1', '1455699815', '1455699815');
INSERT INTO `wiki_info` VALUES ('254', '根据榜单ID查询榜单信息', '', 'SNS_SDK::execute(&quot;best_pocoers.get_rank_by_rank_id&quot;, $param);', 'rank_id#int#榜单ID&lt;br /&gt;b_use_cache#bool#是否使用缓存，默认：true', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', 'array#', '', '', '', '59', '150002104', '0', '1', '1455699867', '1455699867');
INSERT INTO `wiki_info` VALUES ('255', '获取榜单列表', '', 'SNS_SDK::execute(&quot;best_pocoers.get_rank_list&quot;, $param);', 'channel_id#int#频道ID，可选&lt;br /&gt;limit#string#获取数目，默认：0,20&lt;br /&gt;orderby#string#排序，默认：rank_id ASC&lt;br /&gt;b_select_count#bool#获取数量，默认：false', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', 'array#', '', '', '', '59', '150002104', '0', '1', '1455699906', '1455699906');
INSERT INTO `wiki_info` VALUES ('256', '添加发行期', '', 'SNS_SDK::execute(&quot;best_pocoers.add_issue&quot;, $param);', 'rank_id#int#榜单ID&lt;br /&gt;issue_name#string#期名&lt;br /&gt;issue_number#int#期数&lt;br /&gt;begin_date#int#开始日期&lt;br /&gt;end_date#int#结束日期&lt;br /&gt;admin_user_id#int#管理员ID', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '&gt;0#操作成功,返回issue_id&lt;br /&gt;0#操作失败&lt;br /&gt;-1#参数缺失&lt;br /&gt;-2#榜单不存在', '', '', '', '59', '150002104', '0', '1', '1455699957', '1455699957');
INSERT INTO `wiki_info` VALUES ('257', '更新发行期', '', 'SNS_SDK::execute(&quot;best_pocoers.update_issue&quot;, $param);', 'issue_id#int#期ID&lt;br /&gt;options#array#更新内容', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '1#操作成功&lt;br /&gt;0#操作失败&lt;br /&gt;-1#参数缺失&lt;br /&gt;-2#没有数据更新&lt;br /&gt;-3#榜单不存在', '', '', '', '59', '150002104', '0', '1', '1455699984', '1455699984');
INSERT INTO `wiki_info` VALUES ('258', '根据期ID删除发行期', '', 'SNS_SDK::execute(&quot;best_pocoers.del_issue_by_issue_id&quot;, $param);', 'issue_id#int#期ID', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '1#操作成功&lt;br /&gt;0#操作失败&lt;br /&gt;-1#参数缺失', '', '', '', '59', '150002104', '0', '1', '1455700019', '1455700019');
INSERT INTO `wiki_info` VALUES ('259', '根据期ID查询期信息', '', 'SNS_SDK::execute(&quot;best_pocoers.get_issue_by_issue_id&quot;, $param);', 'issue_id#int#期ID&lt;br /&gt;b_use_cache#bool#是否使用缓存，默认：true', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', 'array#', '', '', '', '59', '150002104', '0', '1', '1455700096', '1455700096');
INSERT INTO `wiki_info` VALUES ('260', '获取期列表', '', 'SNS_SDK::execute(&quot;best_pocoers.get_issue_list&quot;, $param);', 'rank_id#int#榜单ID，可选&lt;br /&gt;limit#string#获取数目，默认：0,20&lt;br /&gt;orderby#string#排序，默认：issue_id DESC&lt;br /&gt;b_select_count#bool#获取数量，默认：false', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', 'array#', '', '', '', '59', '150002104', '0', '1', '1455700143', '1455761045');
INSERT INTO `wiki_info` VALUES ('262', '更新榜单内容', '', 'SNS_SDK::execute(&quot;best_pocoers.update_record&quot;, $param);', 'log_id#int#内容ID&lt;br /&gt;options#array#更新内容', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '1#操作成功&lt;br /&gt;0#操作失败&lt;br /&gt;-1#参数缺失&lt;br /&gt;-2#没有数据更新&lt;br /&gt;-3#发行期不存在', '', '', '', '59', '150002104', '0', '1', '1455765591', '1455765732');
INSERT INTO `wiki_info` VALUES ('263', '根据内容ID删除榜单内容', '', 'SNS_SDK::execute(&quot;best_pocoers.del_record_by_log_id&quot;, $param);', 'log_id#int#内容ID', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '1#操作成功&lt;br /&gt;0#操作失败&lt;br /&gt;-1#参数缺失', '', '', '', '59', '150002104', '0', '1', '1455765719', '1455765719');
INSERT INTO `wiki_info` VALUES ('264', '根据内容ID查询内容信息', '', 'SNS_SDK::execute(&quot;best_pocoers.get_record_by_log_id&quot;, $param);', 'log_id#int#内容ID&lt;br /&gt;b_use_cache#bool#是否使用缓存，默认：true', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', 'array#', '', '', '', '59', '150002104', '0', '1', '1455765773', '1455765773');
INSERT INTO `wiki_info` VALUES ('265', '获取榜单内容列表', '', 'SNS_SDK::execute(&quot;best_pocoers.get_record_list&quot;, $param);', 'rank_id#int#榜单ID，可选&lt;br /&gt;issue_id#int#发行期ID，可选&lt;br /&gt;user_id#int#用户ID，可选&lt;br /&gt;limit#string#获取数目，默认：0,20&lt;br /&gt;orderby#string#排序，默认：log_id ASC&lt;br /&gt;b_select_count#bool#获取数量，默认：false', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', 'array#', '', '', '', '59', '150002104', '0', '1', '1455765806', '1455765806');
INSERT INTO `wiki_info` VALUES ('267', '发送IM在线消息', '', 'SNS_SDK::execute(\'common.send_im_online_message\', $param);', 'identify#string#发送者ID（*）&lt;br /&gt;to_user_id#string#接收者ID（*）&lt;br /&gt;msg_type#string#消息的类型，分为：\'text\'（*）&lt;br /&gt;txt_content#string#消息内容（*）', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', 'code =  0#操作成功&lt;br /&gt;code = -1#参数错误&lt;br /&gt;code = -2#消息类型对应的参数错误&lt;br /&gt;code = -3#获取授权失败&lt;br /&gt;code = -4#请求数据错误', '', '', '', '41', '150002062', '0', '1', '1455863226', '1455863226');
INSERT INTO `wiki_info` VALUES ('268', '发送IM离线消息', '', 'SNS_SDK::execute(\'common.send_im_offline_message\', $param);', 'identify#string#发送者ID（*）&lt;br /&gt;to_user_id#string#接收者ID（*）&lt;br /&gt;msg_type#string#消息的类型，分为：\'text\'（*）&lt;br /&gt;txt_content#string#消息内容（*）', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', 'code =  0#操作成功&lt;br /&gt;code = -1#参数错误&lt;br /&gt;code = -2#消息类型对应的参数错误&lt;br /&gt;code = -3#获取授权失败&lt;br /&gt;code = -4#请求数据错误', '', '', '', '41', '150002062', '0', '1', '1455863278', '1455863278');
INSERT INTO `wiki_info` VALUES ('271', '删除作品（改变状态）', '通过修改状态来删除作品，可恢复', 'SNS_SDK::execute(\'article.del_info_by_status\', $param);', '$param[\'art_id\']#int#作品ID（*）', 'include \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '1#操作成功&lt;br /&gt;-1#参数错误&lt;br /&gt;-2#作品不存在&lt;br /&gt;-3#作品已是删除状态&lt;br /&gt;-4#更新状态失败', '', '', '', '27', '150002063', '0', '1', '1456367308', '1456367308');
INSERT INTO `wiki_info` VALUES ('272', '删除用户一个作品（改变状态）', '通过修改状态来删除作品，可恢复', 'SNS_SDK::execute(\'article.del_user_article_by_status\', $param);', '$param[\'art_id\']#int#作品ID（*）&lt;br /&gt;$param[\'user_id\']#int#用户ID（*）', 'include \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '1#操作成功&lt;br /&gt;-1#参数错误&lt;br /&gt;-2#作品不存在&lt;br /&gt;-3#作品已是删除状态&lt;br /&gt;-4#更新状态失败', '', '', '', '27', '150002063', '0', '1', '1456369839', '1456369839');
INSERT INTO `wiki_info` VALUES ('273', '根据作品ID恢复作品', '', 'SNS_SDK::execute(\'article.recovery_article_by_art_id\', $param);', '$param[\'art_id\']#int#作品ID（*）', 'include \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '1#恢复成功&lt;br /&gt;-1#参数错误&lt;br /&gt;-2#作品不存在&lt;br /&gt;-3#作品已是删除状态&lt;br /&gt;-4#更新状态失败', '', '', '', '27', '150002063', '0', '1', '1456371635', '1456371635');
INSERT INTO `wiki_info` VALUES ('274', '重置新粉丝数统计', '', 'SNS_SDK::execute(&quot;friend.reset_user_stat_new_fans_count&quot;, $param);', 'user_id#int#用户ID&lt;br /&gt;app_name#string#应用名', 'include_once \'/disk/data/htdocs232/sns/modules/sdk/sns_sdk.php\';', '1#操作成功&lt;br /&gt;0#没数据被更新&lt;br /&gt;-1#参数错误', '', '', '', '52', '150002104', '0', '1', '1456373416', '1456373416');
INSERT INTO `wiki_info` VALUES ('276', '设置作品的“私密”状态', '', 'http://jk.poco.cn/api/v1/jane_plus/set_portfolio_is_public_status_api.php', 'portfolio_id#int#作品ID（*）&lt;br /&gt;user_id#int#用户ID（*）&lt;br /&gt;status#string#私密状态, 状态, \'public\' =&gt; 公开, \'private\' =&gt; \'私密\'（*）&lt;br /&gt;access_token#string#授权Token（*）', 'API调用，支持GET或POST，使用通信协议', 'ret_code =  0#操作成功&lt;br /&gt;ret_code = -1#参数错误&lt;br /&gt;ret_code = -2#作品为空&lt;br /&gt;ret_code = -3#操作人无权限&lt;br /&gt;ret_code = -4#作品状态错误&lt;br /&gt;ret_code = -5#操作失败', '', '', '', '54', '150002062', '0', '1', '1456743731', '1456744255');

-- ----------------------------
-- Table structure for wiki_menu
-- ----------------------------
DROP TABLE IF EXISTS `wiki_menu`;
CREATE TABLE `wiki_menu` (
  `menu_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(100) NOT NULL DEFAULT '',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `summary` text NOT NULL,
  `catalog` text NOT NULL,
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`menu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wiki_menu
-- ----------------------------
INSERT INTO `wiki_menu` VALUES ('27', 'article', '26', '8', '150002063', '', '', '1447646867', '1513754154');
INSERT INTO `wiki_menu` VALUES ('26', '底层系统', '0', '0', '150002063', '', '150002150,150000320,150002151,150002223,150002228,150017016,150027836', '1447646744', '1456993458');
INSERT INTO `wiki_menu` VALUES ('31', 'member', '26', '12', '150002062', '', '', '1447658016', '1513754154');
INSERT INTO `wiki_menu` VALUES ('40', 'message', '26', '7', '150002063', '', '', '1447919145', '1513754154');
INSERT INTO `wiki_menu` VALUES ('41', 'common', '26', '13', '150002062', '提供系统的公共方法', '', '1447926293', '1513754154');
INSERT INTO `wiki_menu` VALUES ('42', 'protocol', '26', '11', '150002062', '通信协议相关底层接口', '', '1447932373', '1513754154');
INSERT INTO `wiki_menu` VALUES ('53', 'notice', '26', '4', '150002104', '', '', '1448503812', '1513754154');
INSERT INTO `wiki_menu` VALUES ('54', '作品管理', '49', '2', '150002062', '', '', '1448877488', '1448877488');
INSERT INTO `wiki_menu` VALUES ('47', 'quan', '26', '10', '150002062', '', '', '1448274237', '1513754154');
INSERT INTO `wiki_menu` VALUES ('48', 'media', '26', '6', '150002063', '', '', '1448335858', '1513754154');
INSERT INTO `wiki_menu` VALUES ('49', '简客APP接口', '0', '0', '150002062', '', '150002187,150002188,150002189,150002190,150002191', '1448355461', '1448880688');
INSERT INTO `wiki_menu` VALUES ('50', '账号管理', '49', '1', '150002062', '', '', '1448355639', '1448355639');
INSERT INTO `wiki_menu` VALUES ('52', 'friend', '26', '5', '150002104', '', '', '1448501392', '1513754154');
INSERT INTO `wiki_menu` VALUES ('55', '文件上传', '49', '1', '150002062', '', '', '1448955382', '1448955382');
INSERT INTO `wiki_menu` VALUES ('56', 'partner_login', '26', '9', '150002062', '', '', '1448968551', '1513754154');
INSERT INTO `wiki_menu` VALUES ('57', 'private_message', '26', '3', '150002104', '', '', '1450835059', '1513754154');
INSERT INTO `wiki_menu` VALUES ('58', 'credit', '26', '2', '150002104', '', '', '1451367454', '1513754154');
INSERT INTO `wiki_menu` VALUES ('59', 'best_pocoers', '26', '1', '150002104', '', '', '1455696452', '1513754154');

-- ----------------------------
-- Table structure for wx_access_token
-- ----------------------------
DROP TABLE IF EXISTS `wx_access_token`;
CREATE TABLE `wx_access_token` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `access_token` text NOT NULL,
  `expires_in` int(10) NOT NULL DEFAULT '0',
  `add_time` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wx_access_token
-- ----------------------------
INSERT INTO `wx_access_token` VALUES ('5', 'OP-0in5nUT2bH1WWoarJcthGrdwV9aOhX1cd1A76st9BZAGAC9CQ3UqMS8VF8JY5oGUkagYDTdL_Xu4LPI7KqryTYPhlv8OmrrRNWfwRsmQPOWjABAYXF', '7200', '1457514151');
INSERT INTO `wx_access_token` VALUES ('6', '35_Gz8fqOu66DX6-aKIIWXxSm4hQQ-SI6RW8OKcLScfQsesq3ck1kb6BgoYvAmHCyDxiJfMAbUE-F-4Ge6ORdaRzVlP-LHcjHv2trp8qrpZtQAtIxD9M2Uw6jAc-4DftTROcABADBY', '7200', '1457514231');
INSERT INTO `wx_access_token` VALUES ('7', 'wKJG1iHjOMgUcvFGP1irDKv_myUPD8sJ7hYMRSabvuQgdmvpmAKf1rDAqCRSI8zL3A7znbBeEZQfxHmeUonVDRbsDeT3coQ0PtXPL9QenMtFXVfNmYuuPlvxKGVPiEB8THDeAAAXLH', '7200', '1457527303');
INSERT INTO `wx_access_token` VALUES ('8', 'nOw9iA-tApI0YQK-vZ_-CwKxWM2DdHWdCnt1T_VeyRd32O4F9EPLzQNYqDlphbzoQFzrkF0K6gehYf7RlHSelw1Sem_bOcUhCcHjVmn2Itb0Zy11S0doLZXEXe7pm6FwLBVaAHACSM', '7200', '1457578501');
INSERT INTO `wx_access_token` VALUES ('9', 'ZYaWnDobjgEBPfcJEU9QwtSJFs19mIoTn4Pi7_2R7az0Un16HzoI82wfsr21qCglCzexpSNaKumSzRmEpL4xiWx5OWaYcUN6iZX-beR_wNo7i8hg93aUt__X3Yu4NExRWJAdADAPCT', '7200', '1457921793');

-- ----------------------------
-- Table structure for wx_action_log
-- ----------------------------
DROP TABLE IF EXISTS `wx_action_log`;
CREATE TABLE `wx_action_log` (
  `log_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `act_code` varchar(255) NOT NULL DEFAULT '',
  `value` tinyint(3) NOT NULL DEFAULT '0',
  `add_time` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wx_action_log
-- ----------------------------
INSERT INTO `wx_action_log` VALUES ('1', '8', '2048', '5', '1458112904');
INSERT INTO `wx_action_log` VALUES ('2', '8', '贪吃蛇', '5', '1458112927');
INSERT INTO `wx_action_log` VALUES ('3', '8', '/:footb', '1', '1458113086');
INSERT INTO `wx_action_log` VALUES ('4', '8', '/:showlove', '1', '1458113277');
INSERT INTO `wx_action_log` VALUES ('5', '8', '/:rose', '1', '1458113296');
INSERT INTO `wx_action_log` VALUES ('6', '8', '碰碰熊', '5', '1458113644');
INSERT INTO `wx_action_log` VALUES ('7', '8', '/:heart', '1', '1458113686');
INSERT INTO `wx_action_log` VALUES ('8', '8', '碰碰熊', '5', '1458113692');
INSERT INTO `wx_action_log` VALUES ('10', '8', '查询个人信息', '0', '1458114964');
INSERT INTO `wx_action_log` VALUES ('11', '8', '查询个人信息', '0', '1458115269');
INSERT INTO `wx_action_log` VALUES ('12', '8', '/:showlove', '1', '1458115370');
INSERT INTO `wx_action_log` VALUES ('13', '8', '查询个人信息', '0', '1458115374');
INSERT INTO `wx_action_log` VALUES ('14', '8', '查询个人信息', '0', '1458115429');
INSERT INTO `wx_action_log` VALUES ('15', '8', '查询个人信息', '0', '1458115514');
INSERT INTO `wx_action_log` VALUES ('16', '8', '查询个人信息', '0', '1458115727');
INSERT INTO `wx_action_log` VALUES ('17', '8', '查询个人信息', '0', '1458115802');
INSERT INTO `wx_action_log` VALUES ('18', '8', '查询个人信息', '0', '1458115874');
INSERT INTO `wx_action_log` VALUES ('19', '8', '贪吃蛇', '5', '1458116709');
INSERT INTO `wx_action_log` VALUES ('20', '8', '查询个人信息', '0', '1458116761');
INSERT INTO `wx_action_log` VALUES ('21', '13', '2048', '5', '1458199974');
INSERT INTO `wx_action_log` VALUES ('22', '8', '/::$', '1', '1458200124');
INSERT INTO `wx_action_log` VALUES ('23', '8', '五子棋', '5', '1458200136');
INSERT INTO `wx_action_log` VALUES ('24', '8', '查询个人信息', '0', '1458200177');
INSERT INTO `wx_action_log` VALUES ('25', '13', '贪吃蛇', '5', '1458205788');
INSERT INTO `wx_action_log` VALUES ('26', '14', '2048', '5', '1458215743');
INSERT INTO `wx_action_log` VALUES ('27', '8', '/::$', '1', '1458390755');
INSERT INTO `wx_action_log` VALUES ('28', '8', '查询个人信息', '0', '1458390824');
INSERT INTO `wx_action_log` VALUES ('29', '8', '/::$', '1', '1458800022');
INSERT INTO `wx_action_log` VALUES ('30', '8', '/::D', '1', '1458800332');
INSERT INTO `wx_action_log` VALUES ('31', '8', '2048', '5', '1458800338');
INSERT INTO `wx_action_log` VALUES ('32', '8', '/::D', '1', '1459064144');
INSERT INTO `wx_action_log` VALUES ('33', '8', '查询个人信息', '0', '1459064151');
INSERT INTO `wx_action_log` VALUES ('34', '8', '飞机战争', '5', '1459064241');
INSERT INTO `wx_action_log` VALUES ('35', '13', '2048', '5', '1459856392');
INSERT INTO `wx_action_log` VALUES ('36', '8', '/::$', '1', '1461083688');
INSERT INTO `wx_action_log` VALUES ('37', '13', '2048', '5', '1472202055');
INSERT INTO `wx_action_log` VALUES ('38', '13', '五子棋', '5', '1472202059');
INSERT INTO `wx_action_log` VALUES ('39', '13', '贪吃蛇', '5', '1472202062');
INSERT INTO `wx_action_log` VALUES ('40', '13', '碰碰熊', '5', '1472202102');
INSERT INTO `wx_action_log` VALUES ('41', '13', '查询个人信息', '0', '1472202126');
INSERT INTO `wx_action_log` VALUES ('42', '42', '有房子租吗', '1', '1497308572');

-- ----------------------------
-- Table structure for wx_user_info
-- ----------------------------
DROP TABLE IF EXISTS `wx_user_info`;
CREATE TABLE `wx_user_info` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `open_id` varchar(200) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `add_time` int(10) NOT NULL DEFAULT '0',
  `update_time` int(10) NOT NULL DEFAULT '0',
  `credit` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `open_id` (`open_id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wx_user_info
-- ----------------------------
INSERT INTO `wx_user_info` VALUES ('8', 'ogCNcwXhorURAuwWW7l6SEgJjZd0', '0', '1457579985', '1483172516', '51');
INSERT INTO `wx_user_info` VALUES ('11', 'ogCNcwdJaPFIYJ2tXpvXRamcWrd4', '1', '1458104161', '1458104161', '0');
INSERT INTO `wx_user_info` VALUES ('12', 'ogCNcwetx85fURjfLm63EDCXBGmc', '1', '1458199750', '1458199750', '0');
INSERT INTO `wx_user_info` VALUES ('13', 'ogCNcwXvmEDDaT7u-ANJ4Ju5YvVA', '1', '1458199961', '1458199961', '35');
INSERT INTO `wx_user_info` VALUES ('14', 'ogCNcwXIXz3TJBN5r8DT0xAGmE14', '1', '1458215720', '1458215720', '5');
INSERT INTO `wx_user_info` VALUES ('15', 'ogF-_uEr8AvUVIP0yYt8JQBVkEyQ', '0', '1458448672', '1458448711', '0');
INSERT INTO `wx_user_info` VALUES ('16', 'ogF-_uPnb8y8mwM13p2b2udBEutU', '0', '1459082481', '1477152032', '0');
INSERT INTO `wx_user_info` VALUES ('17', 'ogF-_uPDRK32ug0O-JyvVlnZGX-Y', '1', '1459596803', '1459596803', '0');
INSERT INTO `wx_user_info` VALUES ('18', 'ogF-_uAV2hesppSb_fWJKMU_XaSE', '0', '1462953443', '1462953463', '0');
INSERT INTO `wx_user_info` VALUES ('19', 'ogF-_uPGnXTr_qY1npRmmDZxMrLA', '0', '1463035583', '1463035772', '0');
INSERT INTO `wx_user_info` VALUES ('20', 'ogF-_uKupRU8e6bwW4A431bdViRw', '0', '1464257908', '1464257926', '0');
INSERT INTO `wx_user_info` VALUES ('21', 'ogF-_uPERegK7kUf92JH584V5Unw', '0', '1464359776', '1464359790', '0');
INSERT INTO `wx_user_info` VALUES ('22', 'ogCNcwSkc9fveP9JZSGXeGXh8aVw', '0', '1464598235', '1469195828', '0');
INSERT INTO `wx_user_info` VALUES ('23', 'ogF-_uDg6WRBBuZRt_YOvLEsvji0', '0', '1464760552', '1464760610', '0');
INSERT INTO `wx_user_info` VALUES ('24', 'ogF-_uG7_CXkh-sAxQmcyTdMLtO4', '1', '1468214851', '1468214851', '0');
INSERT INTO `wx_user_info` VALUES ('25', 'ogF-_uHhWxueKn7WVjL4zj__fkME', '0', '1470651769', '1470651783', '0');
INSERT INTO `wx_user_info` VALUES ('26', 'ogF-_uC-QZisvgGPRDXb0w6nyDGo', '0', '1472462035', '1472462051', '0');
INSERT INTO `wx_user_info` VALUES ('27', 'ogF-_uKpMC8YmnZ0qiTIazA7p4T8', '0', '1473007506', '1473007526', '0');
INSERT INTO `wx_user_info` VALUES ('28', 'ogF-_uCjdd2fmwj-oBjx8RTp03jw', '0', '1473237712', '1473237757', '0');
INSERT INTO `wx_user_info` VALUES ('29', 'ogF-_uOZ4fRnf22bn2emGVt_iHxk', '0', '1478551364', '1478551371', '0');
INSERT INTO `wx_user_info` VALUES ('30', 'ogCNcwfvzRAT3IouVn1v9th0x7ZU', '0', '1479838299', '1479866762', '0');
INSERT INTO `wx_user_info` VALUES ('31', 'ogF-_uFpYOH6eWMn3-e9H_IYi-pY', '0', '1480940314', '1480940314', '0');
INSERT INTO `wx_user_info` VALUES ('32', 'ogF-_uJTM6YEOcBlhOJQf0yJ4p-c', '0', '1483711968', '1483711977', '0');
INSERT INTO `wx_user_info` VALUES ('33', 'ogF-_uCQb4nfo-dvvDBstAytwSAY', '1', '1484482367', '1484482367', '0');
INSERT INTO `wx_user_info` VALUES ('34', 'ogF-_uNebE0-T4cLZg8D_1Ye2vSE', '1', '1486216228', '1486216228', '0');
INSERT INTO `wx_user_info` VALUES ('35', 'ogF-_uD7YQJ6l0yt-I8TgYWws2iQ', '0', '1489154940', '1489154961', '0');
INSERT INTO `wx_user_info` VALUES ('36', 'ogF-_uO0FgBeTJo9tYs1lL56eEMc', '0', '1489938474', '1489938481', '0');
INSERT INTO `wx_user_info` VALUES ('37', 'ogF-_uBmfVSWNKip9XnqXZ_N7wKI', '0', '1491130956', '1491130970', '0');
INSERT INTO `wx_user_info` VALUES ('38', 'ogF-_uMNynWWIRR7asUqcfce23TI', '0', '1491374667', '1492103230', '0');
INSERT INTO `wx_user_info` VALUES ('39', 'ogF-_uODvZdSMvuMR_EGFo4IFVL0', '0', '1491766344', '1491766361', '0');
INSERT INTO `wx_user_info` VALUES ('40', 'ogF-_uBUGhhamh823skhV-KWZzEQ', '0', '1493215124', '1493215149', '0');
INSERT INTO `wx_user_info` VALUES ('41', 'ogF-_uNR8oqU-YkzQVwnfuCPEjNs', '1', '1493561869', '1493561869', '0');
INSERT INTO `wx_user_info` VALUES ('42', 'ogF-_uFiDeS77UNZdXoPlxwPhomE', '1', '1497308559', '1497308559', '1');

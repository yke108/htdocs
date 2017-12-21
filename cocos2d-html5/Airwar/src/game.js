var g_GameZOder = {bg: 0, ui: 1, front: 2};
var g_GameStatus={normal:0,stop:1,gameOver:2,pause:3,rod1:4,end:5};//游戏的状态，0：正常，1：暂停, 2:游戏结束,3:游戏停顿
                                                             //4:第一关，5:游戏通关

var GameScene = cc.Scene.extend({
	 winSize:cc.size(800,560),
     gameLayer:null, //游戏层
     zhujue:null, //主角
     direnarr:null,//敌人组
     timer: 0,
     stopTimer: 0,
     gameStatus:0,//游戏状态，0：正常，1：暂停，2：结束
     boom: null,//爆炸背景
     score: 0,
     lblScore: null,
     levels: 1,
     speed: 100,
     direnCount:null,//敌人数量
     avoidDirenCount: 0,//成功躲避敌人数量
     
     //关卡图
     k1: null,
	 k2: null,
	 k3: null,
	 k4: null,
   	 k5: null,
   	 k6: null,
	 k7: null,
	 k8: null,
	 k9: null,
	 k10: null,
   	 
   	 //round图
   	 r1: null,
  	 r2: null,
  	 r3: null,
 	 r4: null,
 	 r5: null,
 	 r6: null,
 	 r7: null,
 	 r8: null,
 	 r9: null,
 	 r10: null,

     onEnter:function () {
        this._super();//调用父类的同名方法，这里是调用cc.Scene的onEnter
        //一般在这里自己写进入场景后的操作
        this.initData();
        //参数1：执行函数，参数2：调用间隔时间，0为每帧都调用
        this.schedule(this.update, 0);
        
        //加载过关图片
        this.initSuccseeLevel();
      
     },
     
     initData:function(){
    	 this.gameStatus = g_GameStatus.stop;
    	 this.direnCount=4;
    	 
    	 //添加Layer
         this.gameLayer = cc.Layer.create();
         this.addChild(this.gameLayer);
         //添加背景
         var bg = cc.Sprite.create(s_bg);
         this.gameLayer.addChild(bg,0);
         bg.setAnchorPoint(cc.p(0,0));
         bg.setPosition(cc.p(0,0)); 
         
         //添加主角
         this.zhujue = new ZhujueSprite();
         this.zhujue.setAnchorPoint(cc.p(0.5, 0));
         this.zhujue.setPosition(cc.p(350, 0));
         this.gameLayer.addChild(this.zhujue,g_GameZOder.ui);
         
         //添加开始按钮
         var start1 = cc.Sprite.create(s_btn);
         var start2 = cc.Sprite.create(s_btn);
         //cc.MenuItemSprite 参数1：正常状态时显示的Sprite 参数2：摁下选中状态时显示的Sprite 参数3：执行函数 参数4：一般传入this
         this.btnStart = cc.MenuItemSprite.create(start1, start2, this.round1, this); 
         var infoMenu = cc.Menu.create(this.btnStart);
         this.gameLayer.addChild(infoMenu, g_GameZOder.front);
         this.beginRotate(infoMenu); //开始旋转
         //添加爆炸背景
         this.boom = cc.Sprite.create(s_boom);
         this.gameLayer.addChild(this.boom,g_GameZOder.front);
         this.boom.setPosition(cc.p(110,50));
         this.boom.setVisible(false);
         //添加继续按钮
         var start3 = cc.Sprite.create(s_keepon);
         var start4 = cc.Sprite.create(s_keepon);
         //cc.MenuItemSprite 参数1：正常状态时显示的Sprite 参数2：摁下选中状态时显示的Sprite 参数3：执行函数 参数4：一般传入this
         this.keepon = cc.MenuItemSprite.create(start3, start4, this.round1, this); 
         var infoMenu1 = cc.Menu.create(this.keepon);
         this.gameLayer.addChild(infoMenu1, g_GameZOder.front);
         this.beginRotate(infoMenu1); //开始旋转
         this.keepon.setVisible(false);//隐藏开始按钮
         
         //分数背景
         var bgScore = cc.Sprite.create(s_score);
         bgScore.setAnchorPoint(cc.p(1, 1));
         bgScore.setPosition(cc.p(this.winSize.width, this.winSize.height));
         this.gameLayer.addChild(bgScore, g_GameZOder.front);
         
         //添加分数
         this.lblScore = cc.LabelTTF.create("0", "Arial", 18);//参数1：字符串  参数2：字体(系统字体)  参数3：文字大小
         this.lblScore.setPosition(cc.p(this.winSize.width - 60, this.winSize.height - 21));
         this.lblScore.setColor(cc.c3b(117, 76, 36));//改变颜色
         this.gameLayer.addChild(this.lblScore, g_GameZOder.front);
     },
     
     update: function (dt) {
    	 if (this.gameStatus != g_GameStatus.normal) {
    		 if(this.gameStatus == g_GameStatus.pause){//过关停顿
    			 this.stopTimer += dt;
    			 for(var i=0; i<this.direnCount;i++){
    				 this.gameLayer.removeChild(this.direnarr[i]);
            	 }
    			 if(this.stopTimer>=0&&this.stopTimer<3){
    				 this.setSucPicVisible();
    			 }
    			 if(this.stopTimer>3&&this.stopTimer<5){
        			 this.nextLevel(this.levels);
        			 //this.startGame();
        		 }
    			 if(this.stopTimer>5){
    				 this.setRoundPicUnVisible();
        			 this.startGame();
        		 }
    		 }
    		 if(this.gameStatus == g_GameStatus.rod1){//第一关
    			 this.stopTimer += dt;
    			 if(this.stopTimer>3&&this.stopTimer<5){
        			 this.r1.setVisible(false);
        			 this.startGame();
        		 }
    		 }
    		 if(this.gameStatus == g_GameStatus.end){//通关
    			 this.k10.setVisible(true);
    		 }
             return;
    	 }
		 this.timer += dt;
		 for(var i=0; i<this.direnCount;i++){
			 if(this.timer > i){
				 this.direnarr[i].update(dt);
				 if(this.direnarr[i].collide(this.zhujue)){
					 this.overGame();//游戏结束
		    	 }
			 }
		 }
     },
     
     startGame: function () {
     	 //假如处于结束状态则先重置数据 
         if(this.gameStatus == g_GameStatus.gameOver){
                this.resetData();
         }
         this.timer=0;
         this.gameStatus = g_GameStatus.normal; //设置游戏状态为正常
         this.initEnemy(this.direnCount); //开始游戏
         this.btnStart.setVisible(false);//隐藏开始按钮
         this.keepon.setVisible(false);
         this.boom.setVisible(false);
      },
      
      overGame:function(){
		  this.gameStatus = g_GameStatus.gameOver; //设置游戏状态为结束
		  this.keepon.setVisible(true);//显示开始按钮
		  var x=this.zhujue.getPosition().x;
		  var y=this.zhujue.getPosition().y;
		  this.boom.setPosition(cc.p(x,y+60));
	      this.boom.setVisible(true);
		  this.resetData();
		  this.timer=0;
      },
     
     initEnemy: function (count){
    	 this.direnarr=new Array();
         for(var i=0; i<this.direnCount;i++){
        	 this.diren = new direnSprite();
             this.diren.setPosition(cc.p(25 + i * 50,560))
             this.gameLayer.addChild(this.diren,g_GameZOder.ui); 
             this.diren.curSence = this;
        	 this.direnarr[i]=this.diren;
         }
     },
     //开始按钮旋转
     beginRotate:function(sprite){
    	 sprite.setAnchorPoint(cc.p(0, 0));
         var rotate = cc.RotateBy.create(2,360); //旋转角度，第1个参数：时间，第2个参数：在这个时间内旋转的角度
         var rep1 = cc.RepeatForever.create(rotate); //循环旋转
         sprite.runAction(rep1);//执行
     },
     
     //重置
     resetData:function(){
    	 this.score=0;
    	 this.lblScore.setString(this.score.toString());
    	 this.levels=1;
    	 this.speed=100;
    	 this.avoidDirenCount=0;
    	 for(var i=0; i<this.direnCount;i++){
    		 this.gameLayer.removeChild(this.direnarr[i]);
    	 }
    	 this.direnCount=4;
     },
     
     //计算分数
     conuntScore: function(level){//50   160
    	 this.avoidDirenCount +=1;
    	 if(this.avoidDirenCount==10){
    		 this.gameStatus = g_GameStatus.pause; //设置游戏状态为暂停
    		 this.stopTimer=0; 
    		 this.levels=2;
    	 }else if(this.avoidDirenCount==40){
    		 this.gameStatus = g_GameStatus.pause; //设置游戏状态为暂停
    		 this.stopTimer=0; 
    		 this.levels=3;
    	 }else if(this.avoidDirenCount==90){
    		 this.gameStatus = g_GameStatus.pause; //设置游戏状态为暂停
    		 this.stopTimer=0; 
    		 this.levels=4;
    	 }else if(this.avoidDirenCount==170){
    		 this.gameStatus = g_GameStatus.pause; //设置游戏状态为暂停
    		 this.stopTimer=0; 
    		 this.levels=5;
    	 }else if(this.avoidDirenCount==300){
    		 this.gameStatus = g_GameStatus.pause; //设置游戏状态为暂停
    		 this.stopTimer=0; 
    		 this.levels=6;
    	 }else if(this.avoidDirenCount==500){
    		 this.gameStatus = g_GameStatus.pause; //设置游戏状态为暂停
    		 this.stopTimer=0; 
    		 this.levels=7;
    	 }else if(this.avoidDirenCount==900){
    		 this.gameStatus = g_GameStatus.pause; //设置游戏状态为暂停
    		 this.stopTimer=0; 
    		 this.levels=8;
    	 }else if(this.avoidDirenCount==1700){
    		 this.gameStatus = g_GameStatus.pause; //设置游戏状态为暂停
    		 this.stopTimer=0; 
    		 this.levels=9;
    	 }else if(this.avoidDirenCount==2800){
    		 this.gameStatus = g_GameStatus.pause; //设置游戏状态为暂停
    		 this.stopTimer=0; 
    		 this.levels=10;
    	 }else if(this.avoidDirenCount==5000){//通过
    		 this.levels=11;
    		 this.gameStatus = g_GameStatus.end;
    	 }
    	 this.score += level*5;//累计分数
         this.lblScore.setString(this.score.toString());
     },
     
     //下一关卡
     nextLevel: function(level){
    	 if(level==2){//关卡去2  11   200
    		 this.speed=200;
    		 this.direnCount=5;
    		 this.k1.setVisible(false);
    		 this.r2.setVisible(true);
    	 }else if(level==3){//关卡去3  12   300
    		 this.speed=300;
    		 this.direnCount=5;
    		 this.k2.setVisible(false);
    		 this.r3.setVisible(true);
    	 }else if(level==4){//关卡去4  13   400
    		 this.speed=400;
    		 this.direnCount=6;
    		 this.k3.setVisible(false);
    		 this.r4.setVisible(true);
    	 }else if(level==5){//关卡去5  14   500
    		 this.speed=500;
    		 this.direnCount=6;
    		 this.k4.setVisible(false);
    		 this.r5.setVisible(true);
    	 }else if(level==6){//关卡去6  15  600
    		 this.speed=600;
    		 this.direnCount=7;
    		 this.k5.setVisible(false);
    		 this.r6.setVisible(true);
    	 }else if(level==7){//关卡去7  16  700
    		 this.speed=700;
    		 this.direnCount=7;
    		 this.k6.setVisible(false);
    		 this.r7.setVisible(true);
    	 }else if(level==8){//关卡去8  17  800
    		 this.speed=800;
    		 this.direnCount=8;
    		 this.k7.setVisible(false);
    		 this.r8.setVisible(true);
    	 }else if(level==9){//关卡去9  18  900
    		 this.speed=900;
    		 this.direnCount=8;
    		 this.k8.setVisible(false);
    		 this.r9.setVisible(true);
    	 }else if(level==10){//关卡去10  20  1000
    		 this.speed=1000;
    		 this.direnCount=9;
    		 this.k9.setVisible(false);
    		 this.r10.setVisible(true);
    	 }else if(level==11){//通过，发红包
    		 this.k10.setVisible(true);
    	 }
     },
     
     initSuccseeLevel: function(){
    	 this.k1 = cc.Sprite.create(s_k1);
         this.gameLayer.addChild(this.k1,g_GameZOder.front);
         this.k1.setPosition(cc.p(550,260));
         this.k1.setVisible(false);
         
         this.k2 = cc.Sprite.create(s_k2);
         this.gameLayer.addChild(this.k2,g_GameZOder.front);
         this.k2.setPosition(cc.p(220,260));
         this.k2.setVisible(false);
         
         this.k3 = cc.Sprite.create(s_k3);
         this.gameLayer.addChild(this.k3,g_GameZOder.front);
         this.k3.setPosition(cc.p(400,220));
         this.k3.setVisible(false);
         
         this.k4 = cc.Sprite.create(s_k4);
         this.gameLayer.addChild(this.k4,g_GameZOder.front);
         this.k4.setPosition(cc.p(550,260));
         this.k4.setVisible(false);
         
         this.k5 = cc.Sprite.create(s_k5);
         this.gameLayer.addChild(this.k5,g_GameZOder.front);
         this.k5.setPosition(cc.p(220,260));
         this.k5.setVisible(false);
         
         this.k6 = cc.Sprite.create(s_k6);
         this.gameLayer.addChild(this.k6,g_GameZOder.front);
         this.k6.setPosition(cc.p(550,260));
         this.k6.setVisible(false);
         
         this.k7 = cc.Sprite.create(s_k7);
         this.gameLayer.addChild(this.k7,g_GameZOder.front);
         this.k7.setPosition(cc.p(550,260));
         this.k7.setVisible(false);
         
         this.k8 = cc.Sprite.create(s_k8);
         this.gameLayer.addChild(this.k8,g_GameZOder.front);
         this.k8.setPosition(cc.p(550,260));
         this.k8.setVisible(false);
         
         this.k9 = cc.Sprite.create(s_k9);
         this.gameLayer.addChild(this.k9,g_GameZOder.front);
         this.k9.setPosition(cc.p(550,260));
         this.k9.setVisible(false);
         
         this.k10 = cc.Sprite.create(s_k10);
         this.gameLayer.addChild(this.k10,g_GameZOder.front);
         this.k10.setPosition(cc.p(360,300));
         this.k10.setVisible(false);
         
         //round
         this.r1 = cc.Sprite.create(s_r1);
         this.gameLayer.addChild(this.r1,g_GameZOder.front);
         this.r1.setPosition(cc.p(380,250));
         this.r1.setVisible(false);
         
         this.r2 = cc.Sprite.create(s_r2);
         this.gameLayer.addChild(this.r2,g_GameZOder.front);
         this.r2.setPosition(cc.p(380,250));
         this.r2.setVisible(false);
         
         this.r3 = cc.Sprite.create(s_r3);
         this.gameLayer.addChild(this.r3,g_GameZOder.front);
         this.r3.setPosition(cc.p(380,250));
         this.r3.setVisible(false);
         
         this.r4 = cc.Sprite.create(s_r4);
         this.gameLayer.addChild(this.r4,g_GameZOder.front);
         this.r4.setPosition(cc.p(380,250));
         this.r4.setVisible(false);
         
         this.r5 = cc.Sprite.create(s_r5);
         this.gameLayer.addChild(this.r5,g_GameZOder.front);
         this.r5.setPosition(cc.p(380,250));
         this.r5.setVisible(false);
         
         this.r6 = cc.Sprite.create(s_r6);
         this.gameLayer.addChild(this.r6,g_GameZOder.front);
         this.r6.setPosition(cc.p(380,250));
         this.r6.setVisible(false);
         
         this.r7 = cc.Sprite.create(s_r7);
         this.gameLayer.addChild(this.r7,g_GameZOder.front);
         this.r7.setPosition(cc.p(380,250));
         this.r7.setVisible(false);
         
         this.r8 = cc.Sprite.create(s_r8);
         this.gameLayer.addChild(this.r8,g_GameZOder.front);
         this.r8.setPosition(cc.p(380,250));
         this.r8.setVisible(false);
         
         this.r9 = cc.Sprite.create(s_r9);
         this.gameLayer.addChild(this.r9,g_GameZOder.front);
         this.r9.setPosition(cc.p(380,250));
         this.r9.setVisible(false);
         
         this.r10 = cc.Sprite.create(s_r10);
         this.gameLayer.addChild(this.r10,g_GameZOder.front);
         this.r10.setPosition(cc.p(380,250));
         this.r10.setVisible(false);
     },
     
     setSucPicVisible: function(){
    	 if(this.levels==2){
    		 this.k1.setVisible(true);
    	 }else if(this.levels==3){
    		 this.k2.setVisible(true);
    	 }else if(this.levels==4){
    		 this.k3.setVisible(true);
    	 }else if(this.levels==5){
    		 this.k4.setVisible(true);
    	 }else if(this.levels==6){
    		 this.k5.setVisible(true);
    	 }else if(this.levels==7){
    		 this.k6.setVisible(true);
    	 }else if(this.levels==8){
    		 this.k7.setVisible(true);
    	 }else if(this.levels==9){
    		 this.k8.setVisible(true);
    	 }else if(this.levels==10){
    		 this.k9.setVisible(true);
    	 }else if(this.levels==11){
    		 //this.k3.setVisible(true);
    	 }
     },
     
     setRoundPicUnVisible: function(){
    	 this.r1.setVisible(false);
    	 this.r2.setVisible(false);
    	 this.r3.setVisible(false);
    	 this.r4.setVisible(false);
    	 this.r5.setVisible(false);
    	 this.r6.setVisible(false);
    	 this.r7.setVisible(false);
    	 this.r8.setVisible(false);
    	 this.r9.setVisible(false);
    	 this.r10.setVisible(false);
     },
     
     round1: function(){
    	 this.gameStatus = g_GameStatus.rod1;
    	 this.r1.setVisible(true);
    	 this.stopTimer=0;
    	 this.btnStart.setVisible(false);//隐藏开始按钮
    	 this.boom.setVisible(false);
    	 this.keepon.setVisible(false);//隐藏开始按钮
     }
     
}); 
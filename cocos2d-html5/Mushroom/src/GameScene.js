var g_GameZOder = {bg: 0, ui: 1, front: 2};//游戏显示的层
var g_GameStatus = {normal:0,stop:1,gameOver:2};//游戏的状态，0：正常，1：暂停 2:游戏结束

var GameScene = cc.Scene.extend({
     gameLayer:null,//游戏层
     mushroom:null,//蘑菇
     bear:null,//熊
     lblScore:null,
     score:0,//分数
     lblLives:null,
     lives:5,//生命标签
     btnStart:null,//开始按钮
     leafList:[],//叶子数组
     acornList:[],//橡皮数组
     flowerList:[],//花数组
     winSize:cc.size(480,320),
     gameStatus:0,//游戏状态，0：正常，1：暂停，2：结束
     onEnter:function () {
        this._super();//调用父类的同名方法，这里是调用cc.Scene的onEnter
        //一般在这里自己写进入场景后的操作
        this.initData();

        //启动update
        this.schedule(this.update, 0);
     },

    initData:function(){
    		this.winSize = cc.Director.getInstance().getWinSize();//取得当前给绘图窗口大小
    		this.lives = 5;
    		this.score = 0;
    		this.gameStatus = g_GameStatus.stop;

        //添加Layer
	      this.gameLayer = cc.Layer.create();
	      this.addChild(this.gameLayer);

	      //添加背景
	      var bg = cc.Sprite.create(s_forest1);
	      this.gameLayer.addChild(bg,g_GameZOder.bg);
	      bg.setAnchorPoint(cc.p(0,0));
	      bg.setPosition(cc.p(0,0)); 

				//添加蘑菇
        this.mushroom = new MushroomSprite();
        this.mushroom.initData();
        this.gameLayer.addChild(this.mushroom,g_GameZOder.ui);

        //添加熊
        this.bear = new BearSprite();
        this.bear.initData();
        this.gameLayer.addChild(this.bear,g_GameZOder.ui);
        this.bear.curSence = this;

        //添加奖品
        this.initAcorn();
        this.initFlower();
        this.initLeaf();

				//开始按钮
        var start1 = cc.Sprite.create(s_start_button);
        var start2 = cc.Sprite.create(s_start_button);
        //cc.MenuItemSprite 参数1：正常状态时显示的Sprite 参数2：摁下选中状态时显示的Sprite 参数3：执行函数 参数4：一般传入this
        this.btnStart = cc.MenuItemSprite.create(start1, start2, this.startGame, this); 
        var infoMenu = cc.Menu.create(this.btnStart);
        this.gameLayer.addChild(infoMenu, g_GameZOder.front);

        //添加生命值
        this.lblLives = cc.Sprite.create(s_lives5);
        this.lblLives.setAnchorPoint(cc.p(0, 1));
        this.lblLives.setPosition(cc.p(0, this.winSize.height));
        this.gameLayer.addChild(this.lblLives, g_GameZOder.bg);

        //添加分数背景
        var bgScore = cc.Sprite.create(s_score);
        bgScore.setAnchorPoint(cc.p(1, 1));
        bgScore.setPosition(cc.p(this.winSize.width, this.winSize.height));
        this.gameLayer.addChild(bgScore, g_GameZOder.bg);

        //添加分数
				this.lblScore = cc.LabelTTF.create("0", "Arial", 18);//参数1：字符串  参数2：字体(系统字体)  参数3：文字大小
				this.lblScore.setPosition(cc.p(this.winSize.width - 30, this.winSize.height - 21));
				this.lblScore.setColor(cc.c3b(117, 76, 36));//改变颜色
				this.gameLayer.addChild(this.lblScore, g_GameZOder.ui);
	  },

    //开始游戏
	startGame: function () {
		if(this.gameStatus == g_GameStatus.gameOver){
            this.resetData();
        }
        this.score = 0;
        this.lblScore.setString('0');//修改分数0
        this.lives = 4;
        this.lblLives.initWithFile(s_lives4);
        this.lblLives.setAnchorPoint(cc.p(0, 1));
        this.gameStatus = g_GameStatus.normal; //设置游戏状态为正常
        this.bear.beginRotate(); //熊开始旋转
        this.btnStart.setVisible(false);//隐藏开始按钮
    },

    //游戏结束
    overGame:function(){
        this.lblLives.setAnchorPoint(cc.p(0, 1));
        this.gameStatus = g_GameStatus.gameOver; //设置游戏状态为结束
        this.bear.stopRotate(); //停止旋转
        this.btnStart.setVisible(true);//显示开始按钮
        this.resetData();
        this.lblLives.initWithFile(s_lives0);
    },

    update: function (dt) {
    		if (this.gameStatus != g_GameStatus.normal) {
            return;
				}
				//dt为每帧所消耗的时间，单位为秒
				this.bear.update(dt);
				this.bear.collide(this.mushroom);

				//判断熊与叶子碰撞
        for (var i = 0; i < this.leafList.length; i++) {
            var prize = this.leafList[i];
				//判断没被碰撞则检测
            if (!prize.isHit) {
                if (this.bear.collide(prize)) {
                    prize.setVisible(false);//隐藏
                    prize.isHit = true;//设置已碰撞，下次循环不检测
                    this.addScore(prize.point);
                }
            }
        }
        //判断熊与叶子碰撞
        for (var i = 0; i < this.flowerList.length; i++) {
            var prize = this.flowerList[i];
				//判断没被碰撞则检测
            if (!prize.isHit) {
                if (this.bear.collide(prize)) {
                    prize.setVisible(false);//隐藏
                    prize.isHit = true;//设置已碰撞，下次循环不检测
                    this.addScore(prize.point);
                }
            }
        }
        //判断熊与叶子碰撞
        for (var i = 0; i < this.acornList.length; i++) {
            var prize = this.acornList[i];
            if (!prize.isHit) {
                if (this.bear.collide(prize)) {
                    prize.setVisible(false);
                    prize.isHit = true;
                    this.addScore(prize.point);
                }
            }
        }
		},

		//初始化橡子
    initAcorn: function () {
        var left = 0; //左边距离
        var space = 30; //间距
        for (var i = 1; i <= 15; i++) {
            //添加15个
            var prize = new AcornPrize();
            prize.initData();
            prize.setPosition(cc.p(left + i * space, 270));
            this.gameLayer.addChild(prize, g_GameZOder.ui);
            this.acornList.push(prize);  //放入数组，用来取出检测碰撞
        }
    },
    //初始化花
    initFlower: function () {
        var left = 30;  //左边距离
        var space = 30;  //间距
        for (var i = 1; i <= 13; i++) {
            //添加13个
            var prize = new FlowerPrize();
            prize.initData();
            prize.setPosition(cc.p(left + i * space, 245));
            this.gameLayer.addChild(prize, g_GameZOder.ui);
            this.flowerList.push(prize);  //放入数组，用来取出检测碰撞
        }
    },
    //初始化叶子
    initLeaf: function () {
        var left = 60;   //左边距离
        var space = 30;   //间距
        for (var i = 1; i <= 11; i++) {
            //添加11个
            var prize = new LeafPrize();
            prize.initData();
            prize.setPosition(cc.p(left + i * space, 220));
            this.gameLayer.addChild(prize, g_GameZOder.ui);
            this.leafList.push(prize);  //放入数组，用来取出检测碰撞
        }
    },

    //重置
    resetData:function(){
    	  //重置生命值
    	  this.lives = 5;
    	  this.lblLives.initWithFile(s_lives5);
    	  this.lblLives.setAnchorPoint(cc.p(0, 1));
        //重置蘑菇
        this.mushroom.initData();
        //重置熊
        this.bear.initData();

        //重置叶子
        for (var i = 0; i < this.leafList.length; i++) {
            var prize = this.leafList[i];
            prize.isHit= false;
            prize.setVisible(true);
        }
        //重置花
        for (var i = 0; i < this.flowerList.length; i++) {
            var prize = this.flowerList[i];
            prize.isHit= false;
            prize.setVisible(true);
        }
        //重置橡子
        for (var i = 0; i < this.acornList.length; i++) {
            var prize = this.acornList[i];
            prize.isHit= false;
            prize.setVisible(true);
        }
    },

    //减少生命值
    reduceLives: function () {
        this.lives -= 1; //减少1生命值
        this.lblLives.initWithFile("res/s_lives" + this.lives + ".png"); //根据生命数改变显示相关的图片
        this.lblLives.setAnchorPoint(cc.p(0, 1));//重置锚点

        if (this.lives <= 0) {
            //生命值少0，游戏结束
            this.overGame();
        } else {
            this.gameStatus = g_GameStatus.normal;
            this.bear.initData();  //重设熊的位置和状态
        }
    },

    //改变分数
    addScore: function (point) {
        this.score += point;//累计分数
        this.lblScore.setString(this.score.toString());//修改分数显示
    },
}); 
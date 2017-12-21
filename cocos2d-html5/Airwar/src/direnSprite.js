var direnSprite = cc.Sprite.extend({
	velocity:null,
	radius:25, // 碰撞半径
	curSence:null,//场景
    ctor:function(){
       this._super();
       this.initWithFile(s_diren);//赋予图片元素
       //this.velocity = cc.p(0, this.curSence.speed);
    },
    
    initData:function(){
		this.setAnchorPoint(cc.p(0.5, 0.5));
        this.setPosition(cc.p(240, 112));
        this.velocity = cc.p(100, 100);
	},
    
    //移动位置
    update: function (dt) {
    	var speed=this.curSence.speed;
		this.setPosition(cc.pAdd(this.getPosition(), cc.pMult(cc.p(0, -speed), dt)));
		this.checkHitEdge();
	},
	
	//检查边界碰撞
    checkHitEdge: function () {
        var pos = this.getPosition();
        var winSize = cc.Director.getInstance().getWinSize();
        //飞机碰到下面边界
        if (pos.y <= this.radius-30) {
        	var ran = Math.round(Math.random()*15);
        	this.setPosition(cc.p(25 + ran * 50,560))
        	this.curSence.conuntScore(this.curSence.levels);
        }
    },
    
  //碰撞检测、假如碰撞返回true，否则返回false
    collide: function (gameObject) {
        var hit = false;
        var distance = cc.pDistance(this.getPosition(), gameObject.getPosition());//两者之间的距离
        //计算碰撞角度，往反方向弹回去
        if (distance <= this.radius + gameObject.radius) {
            hit = true;
        }
        return hit;
    }
});
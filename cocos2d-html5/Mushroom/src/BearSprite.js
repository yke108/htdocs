var BearSprite = cc.Sprite.extend({
		velocity:null,
		radius:25, // 碰撞半径
		curSence:null,//场景

		//构造函数
		ctor:function(){
				this._super();
				this.initWithFile(s_bear_eyesopen);
				this.velocity = cc.p(100,100);
		},

		initData:function(){
			  this.setAnchorPoint(cc.p(0.5, 0.5));
        this.setPosition(cc.p(240, 112));
        this.velocity = cc.p(100,100);
		},

		//旋转
		beginRotate:function(){
       var rotate = cc.RotateBy.create(2,360); //旋转角度，第1个参数：时间，第2个参数：在这个时间内旋转的角度
       var rep1 = cc.RepeatForever.create(rotate); //循环旋转
       this.runAction(rep1);//执行
    },

    //停止所有动作
		stopRotate:function(){
       this.stopAllActions();
    },

    //移动位置
    update: function (dt) {
		 this.setPosition(cc.pAdd(this.getPosition(), cc.pMult(this.velocity, dt)));
		 this.checkHitEdge();
		},

		//检查边界碰撞
    checkHitEdge: function () {
        var pos = this.getPosition();
        var winSize = cc.Director.getInstance().getWinSize();
        //熊碰到右边边界
        if (pos.x > winSize.width - this.radius) {
            //假如向右移动
            this.velocity.x *= -1;//改变水平速度方向

        }
        //熊碰到左边边界
        if (pos.x < this.radius) {
            this.velocity.x *= -1;//改变水平速度方向
        }
        //熊碰到下面边界
        if (pos.y <= this.radius) {
            //减少1生命
            this.curSence.reduceLives();
        }
        //熊碰到上边边界
        if (pos.y >= winSize.height - this.radius) {
            this.velocity.y *= -1;
        }
    },

    //碰撞检测、假如碰撞，修改方向往反角度移动并返回true，否则返回false
    collide: function (gameObject) {
        var hit = false;
        var distance = cc.pDistance(this.getPosition(), gameObject.getPosition());//两者之间的距离
        //计算碰撞角度，往反方向弹回去
        if (distance <= this.radius + gameObject.radius) {
            hit = true;
            //计算碰撞角度，并算出该角度对应的速度
            var hitAngle = cc.pToAngle(cc.pSub(gameObject.getPosition(), this.getPosition()));
            var scalarVelocity = cc.pLength(this.velocity);
            this.velocity = cc.pMult(cc.pForAngle(hitAngle), scalarVelocity);
            //反方向移动
            this.velocity.x *=-1;
            this.velocity.y *=-1;
        }
        return hit;
    }
});
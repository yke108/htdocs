var MushroomSprite = cc.Sprite.extend({
		radius:40,
    ctor:function(){
        this._super();
        this.initWithFile(s_mushroom);//赋予图片元素
        cc.Director.getInstance().getTouchDispatcher().addTargetedDelegate(this, 0, true);
    },
    //判断触摸点是否在图片的区域上
    containsTouchLocation:function (touch) {
        //获取触摸点位置
        var getPoint = touch.getLocation();
        //获取图片区域尺寸
        var contentSize  =  this.getContentSize();
        //定义拖拽的区域
        var myRect = cc.rect(0, 0, contentSize.width, contentSize.height);
        myRect.origin.x += this.getPosition().x-contentSize.width/2;
        //myRect.origin.y += this.getPosition().y-contentSize.height/2;
        //判断点击是否在区域上
        return cc.Rect.CCRectContainsPoint(myRect, getPoint);
    },
    //刚触摸瞬间
    onTouchBegan:function (touch, event) {
        if (!this.containsTouchLocation(touch)) return false;
        return true;
    },
    //触摸移动
    onTouchMoved:function (touch, event) {
        var touchPoint = touch.getLocation();
        this.setPositionX(touchPoint.x);  //设置X轴位置等于触摸的x位置 cc.p(touchPoint.x, 0)
    },

    initData:function(){
    	  this.setAnchorPoint(cc.p(0.5, 0));
        this.setPosition(cc.p(240, 0));
    },
});
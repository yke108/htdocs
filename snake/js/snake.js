var snakeObj = function() {
	this.x = [];//X位置数组
	this.y = [];//Y位置数组
	this.direction = [];//方向数组
	this.timer;//计时器
	this.num;//数目
	this.picRight = new Image();//图片
	this.picLeft = new Image();//图片
	this.picUp = new Image();//图片
	this.picDown = new Image();//图片
	this.gameStatus;//游戏状态
	this.timeInterval;//时间间隔多少就跑一步
};

snakeObj.prototype.init = function() {
	this.num = 3;
	this.timer = 0;
	this.timeInterval = 700;
	this.gameStatus = true;
	this.picRight.src = './src/right.png';
	this.picLeft.src = './src/left.png';
	this.picUp.src = './src/up.png';
	this.picDown.src = './src/down.png';
	for (var i = 0; i < this.num; i++) {
		this.x[i] = 40 * i + 20;
		this.y[i] = 20;
		this.direction[i] = 'right';
	};
};

snakeObj.prototype.draw = function() {
	this.timer += deltaTime;
	if(this.timer > this.timeInterval && this.gameStatus){
		this.timer %= this.timeInterval;
		// 向右走
		if(this.x[this.num-1] > this.x[this.num-2]){
			this.toRight();
		// 向左走
		}else if(this.x[this.num-1] < this.x[this.num-2]){
			this.toLeft();
		// 向下走
		}else if(this.y[this.num-1] > this.y[this.num-2]){
			this.toDown();
		// 向上走
		}else{
			this.toUp();
		}
	}

	for (var i = 0; i < this.num; i++) {
		switch(this.direction[i]){
			case 'up':
			ctx2.drawImage(this.picUp, this.x[i] - 20, this.y[i] - 20, 40, 40);break;
			case 'down':
			ctx2.drawImage(this.picDown, this.x[i] - 20, this.y[i] - 20, 40, 40);break;
			case 'left':
			ctx2.drawImage(this.picLeft, this.x[i] - 20, this.y[i] - 20, 40, 40);break;
			case 'right':
			ctx2.drawImage(this.picRight, this.x[i] - 20, this.y[i] - 20, 40, 40);break;
		}
	};
	this.checkStatus();
};

snakeObj.prototype.toUp = function() {
	if(this.y[this.num-1] - 40 < 20){
		this.gameStatus = false;
		return;
	}
	for (var i = 0; i < this.num-1; i++) {
		this.x[i] = this.x[i+1];
		this.y[i] = this.y[i+1];
		this.direction[i] = this.direction[i+1];
	}
	this.y[this.num-1] = this.y[this.num-1] - 40;
	this.direction[this.num-1] = 'up';
};

snakeObj.prototype.toDown = function() {
	if(this.y[this.num-1] + 40 > 500){
		this.gameStatus = false;
		return;
	}
	for (var i = 0; i < this.num-1; i++) {
		this.x[i] = this.x[i+1];
		this.y[i] = this.y[i+1];
		this.direction[i] = this.direction[i+1];
	}
	this.y[this.num-1] = this.y[this.num-1] + 40;
	this.direction[this.num-1] = 'down';
};

snakeObj.prototype.toLeft = function() {
	if(this.x[this.num-1] - 40 < 20){
		this.gameStatus = false;
		return;
	}
	for (var i = 0; i < this.num-1; i++) {
		this.x[i] = this.x[i+1];
		this.y[i] = this.y[i+1];
		this.direction[i] = this.direction[i+1];
	}
	this.x[this.num-1] = this.x[this.num-1] - 40;
	this.direction[this.num-1] = 'left';
};

snakeObj.prototype.toRight = function() {
	if(this.x[this.num-1] + 40 > 780){
		this.gameStatus = false;
		return;
	}
	for (var i = 0; i < this.num-1; i++) {
		this.x[i] = this.x[i+1];
		this.y[i] = this.y[i+1];
		this.direction[i] = this.direction[i+1];
	}
	this.x[this.num-1] = this.x[this.num-1] + 40;
	this.direction[this.num-1] = 'right';
};

snakeObj.prototype.checkStatus = function() {
	if(this.gameStatus == 0){
		ctx1.fillStyle = "rgba(255,255,255,0.01)";
		ctx1.font = "40px Verdana";
		ctx1.textAlign = "center";
		ctx1.fillText("GAME OVER", 400, 230);
		ctx1.fillStyle = "rgba(255,255,255,0.01)";
		ctx1.font = "30px Verdana";
		ctx1.fillText("重新开始", 400, 280);
	}
};



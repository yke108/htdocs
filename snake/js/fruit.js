var fruitObj = function(){
	this.x = [];
	this.y = [];
	this.pic = new Image();
}

fruitObj.prototype.num = 5;

fruitObj.prototype.init = function() {
	this.pic.src = "./src/fruit.png";
	for (var i = 0; i < this.num; i++) {
		var position = this.getPosition();
		this.x[i] = position[0];
		this.y[i] = position[1];
	};
};

fruitObj.prototype.draw = function() {
	for (var i = 0; i < this.num; i++) {
		ctx2.drawImage(this.pic, this.x[i] - 20, this.y[i] - 20, 40, 40);
	};
};

fruitObj.prototype.getPosition = function() {
	var x = Math.floor(Math.random() * 20) * 40 + 20;
	var y = Math.floor(Math.random() * 13) * 40 + 20;
	for (var i = 0; i < this.num; i++) {
		if(this.x[i] == x && this.y[i] == y){
			return this.getPosition();
		}
	};
	for (var i = 0; i < snake.num; i++) {
		if(snake.x[i] == x && snake.y[i] == y){
			return this.getPosition();
		}
	};
	return [x,y];
};

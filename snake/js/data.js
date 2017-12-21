var dataObj = function(){
	this.score = 0;
}

dataObj.prototype.draw = function() {
	ctx2.fillStyle = "rgba(255,255,255,0.5)";
	ctx2.font = "25px Verdana";
	ctx2.fillText("SCORE：" + this.score, 620, 30);
};
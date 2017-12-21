var dataObj = function()
{
	this.status;
}

dataObj.prototype.init = function() 
{
	this.status = true;
};

dataObj.prototype.gameOver = function(man) 
{
	var str;
	if(man == 'white')
	{
		str = "黑子获胜";
	}
	else
	{
		str = "白子获胜";
	}
	ctx1.save();
	ctx1.fillStyle = "#2A83C7";
	ctx1.font = "40px Verdana";
	ctx1.textAlign = "center";
	ctx1.fillText(str, 450, 420);
	ctx1.font = "30px Verdana";
	ctx1.fillText("重新开始", 450, 480);
	ctx1.restore();
	this.status = false;
}
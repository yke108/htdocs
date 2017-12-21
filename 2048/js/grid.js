var gridObj = function()
{
	this.x = [];
	this.y = [];
	this.d = [];
	this.alive = [];
	this.status;
}

gridObj.prototype.init = function()
{
	for (var i = 0; i < 16; i++) 
	{
		var x = i % 4;
		var y = Math.floor(i / 4);
		this.x[i] = 120 * x + 120;
		this.y[i] = 120 * y + 120;
		this.d[i] = 2048;
		this.alive[i] = false;
	}
	this.status = true;
	this.born();
	this.born();
}

gridObj.prototype.draw = function()
{
	for (var i = 0; i < 16; i++) 
	{
		if(!this.alive[i]) continue;
		ctx1.save();
		ctx1.fillStyle = "#EEE4DA";
		ctx1.fillRect(this.x[i], this.y[i], 100, 100);
		ctx1.font="30px Verdana";
		ctx1.textAlign = "center";
		ctx1.fillStyle = "#7C736A";
		ctx1.fillText(this.d[i], this.x[i] + 50, this.y[i] + 60);
		ctx1.restore();
	}
}

gridObj.prototype.born = function()
{
	var alive = false;
	for (var i = 0; i < 16; i++) 
	{
		if(!this.alive[i])
		{
			alive = true;
			break;
		}
	}
	if(!alive) return;
	var i = Math.floor(Math.random() * 16);
	var d = Math.random() < 0.5 ? 2 : 4;
	if(!this.alive[i]){
		this.alive[i] = true;
		this.d[i] = d;
	}else{
		this.born();
	}
}

gridObj.prototype.check = function()
{
	for (var i = 0; i < 16; i++)
	{
		if(!this.alive[i]) return;
	}
	console.log('全满');
	for (var j = 0; j < 4; j++) 
	{
		for (var i = j*4; i < j*4+3; i++) 
		{
			if(this.d[i] == this.d[i+1]) 
			{
				console.log('有相邻相同');
				return;
			}
		}
	}
	for (var j = 0; j < 4; j++) 
	{
		for (var i = 0; i < 3; i++) 
		{
			if(this.d[4*i+j] == this.d[4*i+j+4]) 
			{
				console.log('有相邻相同');
				return;
			}
		}
	}
	this.gameOver();
}

gridObj.prototype.gameOver = function()
{
	ctx3.save();
	ctx3.fillStyle = "#000";
	ctx3.font = "35px Verdana";
	ctx3.textAlign = "center";
	ctx3.fillText('GAMEOVER', 350, 330);
	ctx3.font = "30px Verdana";
	ctx3.fillText("重新开始", 350, 380);
	ctx3.restore();
	this.status = false;
}

// 向上
gridObj.prototype.up = function()
{
	this.f_up(0);
	this.f_up(1);
	this.f_up(2);
	this.f_up(3);
}

// 向下
gridObj.prototype.down = function()
{
	this.f_down(12);
	this.f_down(13);
	this.f_down(14);
	this.f_down(15);
}

// 向左
gridObj.prototype.left = function()
{
	this.f_left(0);
	this.f_left(4);
	this.f_left(8);
	this.f_left(12);
}

// 向右
gridObj.prototype.right = function()
{
	this.f_right(3);
	this.f_right(7);
	this.f_right(11);
	this.f_right(15);
}

gridObj.prototype.swap = function(x, y)
{
	this.alive[x] = this.alive[y];
	this.d[x] = this.d[y];
}

gridObj.prototype.f_up = function(i) // i = 0,1,2,3
{
	if(!this.alive[i])
	{
		this.swap(i, i+1*4);this.swap(i+1*4, i+2*4);this.swap(i+2*4,i+3*4);this.alive[i+3*4]=false;
		if(!this.alive[i])
		{
			this.swap(i, i+1*4);this.swap(i+1*4, i+2*4);this.alive[i+2*4]=false;
			if(!this.alive[i])
			{
				this.swap(i, i+1*4);this.alive[i+1*4]=false;
			}
		}
	}
	if(!this.alive[i+1*4])
	{
		this.swap(i+1*4, i+2*4);this.swap(i+2*4,i+3*4);this.alive[i+3*4]=false;
		if(!this.alive[i+1*4])
		{
			this.swap(i+1*4, i+2*4);this.alive[i+2*4]=false;
		}
	}
	if(!this.alive[i+2*4])
	{
		this.swap(i+2*4,i+3*4);this.alive[i+3*4]=false;
	}
	if(this.alive[i] && this.alive[i+1*4])
	{
		if(this.d[i] == this.d[i+1*4])
		{
			this.d[i] = this.d[i] * 2;
			this.swap(i+1*4,i+2*4);this.swap(i+2*4,i+3*4);this.alive[i+3*4]=false;
			if(this.d[i+1*4] == this.d[i+2*4] && this.alive[i+1*4] && this.alive[i+2*4])
			{
				this.d[i+1*4] = this.d[i+1*4] * 2;this.alive[i+2*4]=false;
			}
		}else if(this.alive[i+2*4])
		{
			if(this.d[i+1*4] == this.d[i+2*4])
			{
				this.d[i+1*4] = this.d[i+1*4] * 2;
				this.swap(i+2*4,i+3*4);this.alive[i+3*4]=false;
			}else if(this.alive[i+3*4])
			{
				if(this.d[i+2*4] == this.d[i+3*4])
				{
					this.d[i+2*4] = this.d[i+2*4] * 2;
					this.alive[i+3*4]=false;
				}	
			}
		}
	}
}

gridObj.prototype.f_down = function(i) // i = 12,13,14,15
{
	if(!this.alive[i])
	{
		this.swap(i, i-1*4);this.swap(i-1*4, i-2*4);this.swap(i-2*4,i-3*4);this.alive[i-3*4]=false;
		if(!this.alive[i])
		{
			this.swap(i, i-1*4);this.swap(i-1*4, i-2*4);this.alive[i-2*4]=false;
			if(!this.alive[i])
			{
				this.swap(i, i-1*4);this.alive[i-1*4]=false;
			}
		}
	}
	if(!this.alive[i-1*4])
	{
		this.swap(i-1*4, i-2*4);this.swap(i-2*4,i-3*4);this.alive[i-3*4]=false;
		if(!this.alive[i-1*4])
		{
			this.swap(i-1*4, i-2*4);this.alive[i-2*4]=false;
		}
	}
	if(!this.alive[i-2*4])
	{
		this.swap(i-2*4,i-3*4);this.alive[i-3*4]=false;
	}
	if(this.alive[i] && this.alive[i-1*4])
	{
		if(this.d[i] == this.d[i-1*4])
		{
			this.d[i] = this.d[i] * 2;
			this.swap(i-1*4,i-2*4);this.swap(i-2*4,i-3*4);this.alive[i-3*4]=false;
			if(this.d[i-1*4] == this.d[i-2*4] && this.alive[i-1*4] && this.alive[i-2*4])
			{
				this.d[i-1*4] = this.d[i-1*4] * 2;this.alive[i-2*4]=false;
			}
		}else if(this.alive[i-2*4])
		{
			if(this.d[i-1*4] == this.d[i-2*4])
			{
				this.d[i-1*4] = this.d[i-1*4] * 2;
				this.swap(i-2*4,i-3*4);this.alive[i-3*4]=false;
			}else if(this.alive[i-3*4])
			{
				if(this.d[i-2*4] == this.d[i-3*4])
				{
					this.d[i-2*4] = this.d[i-2*4] * 2;
					this.alive[i-3*4]=false;
				}	
			}
		}
	}
}

gridObj.prototype.f_left = function(i) // i = 0,4,8,12
{
	if(!this.alive[i])
	{
		this.swap(i, i+1);this.swap(i+1, i+2);this.swap(i+2,i+3);this.alive[i+3]=false;
		if(!this.alive[i])
		{
			this.swap(i, i+1);this.swap(i+1, i+2);this.alive[i+2]=false;
			if(!this.alive[i])
			{
				this.swap(i, i+1);this.alive[i+1]=false;
			}
		}
	}
	if(!this.alive[i+1])
	{
		this.swap(i+1, i+2);this.swap(i+2,i+3);this.alive[i+3]=false;
		if(!this.alive[i+1])
		{
			this.swap(i+1, i+2);this.alive[i+2]=false;
		}
	}
	if(!this.alive[i+2])
	{
		this.swap(i+2,i+3);this.alive[i+3]=false;
	}
	if(this.alive[i] && this.alive[i+1])
	{
		if(this.d[i] == this.d[i+1])
		{
			this.d[i] = this.d[i] * 2;
			this.swap(i+1,i+2);this.swap(i+2,i+3);this.alive[i+3]=false;
			if(this.d[i+1] == this.d[i+2] && this.alive[i+1] && this.alive[i+2])
			{
				this.d[i+1] = this.d[i+1] * 2;this.alive[i+2]=false;
			}
		}else if(this.alive[i+2])
		{
			if(this.d[i+1] == this.d[i+2])
			{
				this.d[i+1] = this.d[i+1] * 2;
				this.swap(i+2,i+3);this.alive[i+3]=false;
			}else if(this.alive[i+3])
			{
				if(this.d[i+2] == this.d[i+3])
				{
					this.d[i+2] = this.d[i+2] * 2;
					this.alive[i+3]=false;
				}	
			}
		}
	}
}

gridObj.prototype.f_right = function(i) // i = 3,7,11,15
{
	if(!this.alive[i])
	{
		this.swap(i, i-1);this.swap(i-1, i-2);this.swap(i-2,i-3);this.alive[i-3]=false;
		if(!this.alive[i])
		{
			this.swap(i, i-1);this.swap(i-1, i-2);this.alive[i-2]=false;
			if(!this.alive[i])
			{
				this.swap(i, i-1);this.alive[i-1]=false;
			}
		}
	}
	if(!this.alive[i-1])
	{
		this.swap(i-1, i-2);this.swap(i-2,i-3);this.alive[i-3]=false;
		if(!this.alive[i-1])
		{
			this.swap(i-1, i-2);this.alive[i-2]=false;
		}
	}
	if(!this.alive[i-2])
	{
		this.swap(i-2,i-3);this.alive[i-3]=false;
	}
	if(this.alive[i] && this.alive[i-1])
	{
		if(this.d[i] == this.d[i-1])
		{
			this.d[i] = this.d[i] * 2;
			this.swap(i-1,i-2);this.swap(i-2,i-3);this.alive[i-3]=false;
			if(this.d[i-1] == this.d[i-2] && this.alive[i-1] && this.alive[i-2])
			{
				this.d[i-1] = this.d[i-1] * 2;this.alive[i-2]=false;
			}
		}else if(this.alive[i-2])
		{
			if(this.d[i-1] == this.d[i-2])
			{
				this.d[i-1] = this.d[i-1] * 2;
				this.swap(i-2,i-3);this.alive[i-3]=false;
			}else if(this.alive[i-3])
			{
				if(this.d[i-2] == this.d[i-3])
				{
					this.d[i-2] = this.d[i-2] * 2;
					this.alive[i-3]=false;
				}	
			}
		}
	}
}
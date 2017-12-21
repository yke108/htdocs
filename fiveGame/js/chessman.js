var chessmanObj = function()
{
	this.x = [];
	this.y = [];
	this.alive = [];
	this.color = [];
	this.man;
};

// 225颗棋子
chessmanObj.prototype.num = 225;

// 初始化
chessmanObj.prototype.init = function() 
{
	for (var i = 0; i < this.num; i++) 
	{
		this.x[i] = 0;
		this.y[i] = 0;
		this.alive[i] = false;
		this.color[i] = '#FFF';
	};
	this.man = 'white';
};

// 画棋子
chessmanObj.prototype.draw = function() 
{
	ctx1.save();
	for (var i = 0; i < this.num; i++) 
	{
		if(this.alive[i])
		{
			ctx1.fillStyle = this.color[i];
			ctx1.beginPath();
			ctx1.arc(this.x[i], this.y[i], 20, 0, Math.PI*2);
			ctx1.closePath();
			ctx1.fill();
		}
	};
	ctx1.restore();
}

chessmanObj.prototype.draw = function() 
{
	ctx1.save();
	for (var i = 0; i < this.num; i++) 
	{
		if(this.alive[i])
		{
			ctx1.fillStyle = this.color[i];
			ctx1.beginPath();
			ctx1.arc(this.x[i], this.y[i], 20, 0, Math.PI*2);
			ctx1.closePath();
			ctx1.fill();
		}
	}
	ctx1.restore();
}

// 黑色智能走
chessmanObj.prototype.autoPlay = function()
{
	if(this.man == 'white' || !data.status) return;

	// 连续四个黑子
	for (var i = 0; i < this.num; i++) 
	{
		if(this.color[i] == '#FFF' || !this.alive[i]) continue;
		var n = 4;
		var ret = this.listString(i, n);
		if(ret > 0)
		{
			if(ret == 1)
			{
				if(!this.bHere(this.x[i] + n * 50, this.y[i]))
				{
					this.born(this.x[i] + n * 50, this.y[i]); return;
				}
				if(!this.bHere(this.x[i] - 50, this.y[i]))
				{
					this.born(this.x[i] - 50, this.y[i]); return;
				}
			}
			else if(ret == 2)
			{
				if(!this.bHere(this.x[i] + n * 50, this.y[i] + n * 50))
				{
					this.born(this.x[i] + n * 50, this.y[i] + n * 50); return;
				}
				if(!this.bHere(this.x[i] - 50, this.y[i] -50))
				{
					this.born(this.x[i] - 50, this.y[i] - 50); return;
				}
			}
			else if(ret == 3)
			{
				if(!this.bHere(this.x[i], this.y[i] + n * 50))
				{
					this.born(this.x[i], this.y[i] + n * 50); return;
				}
				if(!this.bHere(this.x[i], this.y[i] -50))
				{
					this.born(this.x[i], this.y[i] - 50); return;
				}
			}
			else if(ret == 4)
			{
				if(!this.bHere(this.x[i] - n * 50, this.y[i] + n * 50))
				{
					this.born(this.x[i] - n * 50, this.y[i] + n * 50); return;
				}
				if(!this.bHere(this.x[i] + 50, this.y[i] -50))
				{
					this.born(this.x[i] + 50, this.y[i] - 50); return;
				}
			}
		}
	};

	// 连续四个白子
	for (var i = 0; i < this.num; i++) 
	{
		if(this.color[i] == '#000' || !this.alive[i]) continue;
		var n = 4
		var ret = this.listString(i, n);
		if(ret > 0)
		{
			if(ret == 1)
			{
				if(!this.bHere(this.x[i] + n * 50, this.y[i]))
				{
					this.born(this.x[i] + n * 50, this.y[i]); return;
				}
				if(!this.bHere(this.x[i] - 50, this.y[i]))
				{
					this.born(this.x[i] - 50, this.y[i]); return;
				}
			}
			else if(ret == 2)
			{
				if(!this.bHere(this.x[i] + n * 50, this.y[i] + n * 50))
				{
					this.born(this.x[i] + n * 50, this.y[i] + n * 50); return;
				}
				if(!this.bHere(this.x[i] - 50, this.y[i] -50))
				{
					this.born(this.x[i] - 50, this.y[i] - 50); return;
				}
			}
			else if(ret == 3)
			{
				if(!this.bHere(this.x[i], this.y[i] + n * 50))
				{
					this.born(this.x[i], this.y[i] + n * 50); return;
				}
				if(!this.bHere(this.x[i], this.y[i] -50))
				{
					this.born(this.x[i], this.y[i] - 50); return;
				}
			}
			else if(ret == 4)
			{
				if(!this.bHere(this.x[i] - n * 50, this.y[i] + n * 50))
				{
					this.born(this.x[i] - n * 50, this.y[i] + n * 50); return;
				}
				if(!this.bHere(this.x[i] + 50, this.y[i] -50))
				{
					this.born(this.x[i] + 50, this.y[i] - 50); return;
				}
			}
		}
	};

	// 连续三个黑子
	for (var i = 0; i < this.num; i++) 
	{
		if(this.color[i] == '#FFF' || !this.alive[i]) continue;
		var n = 3;
		var ret = this.listString(i, n);
		if(ret > 0)
		{
			if(ret == 1)
			{
				if(!this.bHere(this.x[i] + n * 50, this.y[i]))
				{
					this.born(this.x[i] + n * 50, this.y[i]); return;
				}
				if(!this.bHere(this.x[i] - 50, this.y[i]))
				{
					this.born(this.x[i] - 50, this.y[i]); return;
				}
			}
			else if(ret == 2)
			{
				if(!this.bHere(this.x[i] + n * 50, this.y[i] + n * 50))
				{
					this.born(this.x[i] + n * 50, this.y[i] + n * 50); return;
				}
				if(!this.bHere(this.x[i] - 50, this.y[i] -50))
				{
					this.born(this.x[i] - 50, this.y[i] - 50); return;
				}
			}
			else if(ret == 3)
			{
				if(!this.bHere(this.x[i], this.y[i] + n * 50))
				{
					this.born(this.x[i], this.y[i] + n * 50); return;
				}
				if(!this.bHere(this.x[i], this.y[i] -50))
				{
					this.born(this.x[i], this.y[i] - 50); return;
				}
			}
			else if(ret == 4)
			{
				if(!this.bHere(this.x[i] - n * 50, this.y[i] + n * 50))
				{
					this.born(this.x[i] - n * 50, this.y[i] + n * 50); return;
				}
				if(!this.bHere(this.x[i] + 50, this.y[i] -50))
				{
					this.born(this.x[i] + 50, this.y[i] - 50); return;
				}
			}
		}
	};

	// 连续三个白子
	for (var i = 0; i < this.num; i++) 
	{
		if(this.color[i] == '#000' || !this.alive[i]) continue;
		var n = 3;
		var ret = this.listString(i, n);
		if(ret > 0)
		{
			if(ret == 1)
			{
				if(!this.bHere(this.x[i] + n * 50, this.y[i]) && !this.bHere(this.x[i] - 50, this.y[i]))
				{
					this.born(this.x[i] + n * 50, this.y[i]); return;
				}
			}
			else if(ret == 2)
			{
				if(!this.bHere(this.x[i] + n * 50, this.y[i] + n * 50) && !this.bHere(this.x[i] - 50, this.y[i] -50))
				{
					this.born(this.x[i] + n * 50, this.y[i] + n * 50); return;
				}
			}
			else if(ret == 3)
			{
				if(!this.bHere(this.x[i], this.y[i] + n * 50) && !this.bHere(this.x[i], this.y[i] -50))
				{
					this.born(this.x[i], this.y[i] + n * 50); return;
				}
			}
			else if(ret == 4)
			{
				if(!this.bHere(this.x[i] - n * 50, this.y[i] + n * 50) && !this.bHere(this.x[i] + 50, this.y[i] -50))
				{
					this.born(this.x[i] - n * 50, this.y[i] + n * 50); return;
				}
			}
		}
	};

	// 连续二个黑子
	for (var i = 0; i < this.num; i++) 
	{
		if(this.color[i] == '#FFF' || !this.alive[i]) continue;
		var n = 2;
		var ret = this.listString(i, n);
		if(ret > 0)
		{
			if(ret == 1)
			{
				if(!this.bHere(this.x[i] + n * 50, this.y[i]) && !this.bHere(this.x[i] - 50, this.y[i]))
				{
					this.born(this.x[i] + n * 50, this.y[i]); return;
				}
			}
			else if(ret == 2)
			{
				if(!this.bHere(this.x[i] + n * 50, this.y[i] + n * 50) && !this.bHere(this.x[i] - 50, this.y[i] -50))
				{
					this.born(this.x[i] + n * 50, this.y[i] + n * 50); return;
				}
			}
			else if(ret == 3)
			{
				if(!this.bHere(this.x[i], this.y[i] + n * 50) && !this.bHere(this.x[i], this.y[i] -50))
				{
					this.born(this.x[i], this.y[i] + n * 50); return;
				}
			}
			else if(ret == 4)
			{
				if(!this.bHere(this.x[i] - n * 50, this.y[i] + n * 50) && !this.bHere(this.x[i] + 50, this.y[i] -50))
				{
					this.born(this.x[i] - n * 50, this.y[i] + n * 50); return;
				}
			}
		}
	};

	// 连续二个白子
	for (var i = 0; i < this.num; i++) 
	{
		if(this.color[i] == '#000' || !this.alive[i]) continue;
		var n = 2
		var ret = this.listString(i, n);
		if(ret > 0)
		{
			if(ret == 1)
			{
				if(!this.bHere(this.x[i] + n * 50, this.y[i]) && !this.bHere(this.x[i] - 50, this.y[i]))
				{
					this.born(this.x[i] + n * 50, this.y[i]); return;
				}
			}
			else if(ret == 2)
			{
				if(!this.bHere(this.x[i] + n * 50, this.y[i] + n * 50) && !this.bHere(this.x[i] - 50, this.y[i] -50))
				{
					this.born(this.x[i] + n * 50, this.y[i] + n * 50); return;
				}
			}
			else if(ret == 3)
			{
				if(!this.bHere(this.x[i], this.y[i] + n * 50) && !this.bHere(this.x[i], this.y[i] -50))
				{
					this.born(this.x[i], this.y[i] + n * 50); return;
				}
			}
			else if(ret == 4)
			{
				if(!this.bHere(this.x[i] - n * 50, this.y[i] + n * 50) && !this.bHere(this.x[i] + 50, this.y[i] -50))
				{
					this.born(this.x[i] - n * 50, this.y[i] + n * 50); return;
				}
			}
		}
	};

	// 一个白子
	for (var i = 0; i < this.num; i++) 
	{
		if(this.alive[i])
		{
			if(!this.bHere(this.x[i] + 50, this.y[i]))
			{
				this.born(this.x[i] + 50, this.y[i]); return;
			}
			if(!this.bHere(this.x[i] - 50, this.y[i]))
			{
				this.born(this.x[i] - 50, this.y[i]); return;
			}
		}
	};
}

// 下棋
chessmanObj.prototype.born = function(x, y) 
{
	for (var i = 0; i < this.num; i++) 
	{
		if(this.alive[i] && this.x[i] == x && this.y[i] == y)
		{
			return;
		}
	}
	for (var i = 0; i < this.num; i++) 
	{
		if(!this.alive[i])
		{
			this.x[i] = x;
			this.y[i] = y;
			this.color[i] = this.man == 'white' ? '#FFF' : '#000';
			this.alive[i] = true;
			this.man = this.man == 'white' ? 'black' : 'white';
			break;
		}
	}
}

// 判断位置是否有棋子
chessmanObj.prototype.bHere = function(x, y) 
{
	var b = false;
	if(x < 100 || x > 800 || y < 100 || y > 800) return true;
	for (var i = 0; i < this.num; i++) 
	{
		if(this.alive[i] && this.x[i] == x && this.y[i] == y)
		{
			b = true;break;
		}
	};
	return b;
}

// 监控胜负
chessmanObj.prototype.minitor = function() 
{
	for (var i = 0; i < this.num; i++) 
	{
		ret = this.listString(i, 5);
		if(ret)
		{
			data.gameOver(this.man);
		}
	}
}

// 判断第j个棋子是否有连续的n个(2<= n <= 5)
chessmanObj.prototype.listString = function(j, n)
{
	var x = this.x[j];
	var y = this.y[j];
	for (var i2 = 0; i2 < this.num; i2++) 
	{
		if(this.alive[i2] && this.color[i2] == this.color[j] && this.x[i2] == x + 50 && this.y[i2] == y)
		{
			if(n == 2) return 1;
			for (var i3 = 0; i3 < this.num; i3++)
			{
				if(this.alive[i3] && this.color[i3] == this.color[j] && this.x[i3] == x + 100 && this.y[i3] == y)
				{
					if(n == 3) return 1;
					for (var i4 = 0; i4 < this.num; i4++)
					{
						if(this.alive[i4] && this.color[i4] == this.color[j] && this.x[i4] == x + 150 && this.y[i4] == y)
						{
							if(n == 4) return 1;
							for (var i5 = 0; i5 < this.num; i5++)
							{
								if(this.alive[i5] && this.color[i5] == this.color[j] && this.x[i5] == x + 200 && this.y[i5] == y)
								{
									if(n == 5) return 1;
								}
							}
						}
					}
				}
			}
		}
	}

	for (var i2 = 0; i2 < this.num; i2++) 
	{
		if(this.alive[i2] && this.color[i2] == this.color[j] && this.x[i2] == x + 50 && this.y[i2] == y + 50)
		{
			if(n == 2) return 2;
			for (var i3 = 0; i3 < this.num; i3++)
			{
				if(this.alive[i3] && this.color[i3] == this.color[j] && this.x[i3] == x + 100 && this.y[i3] == y + 100)
				{
					if(n == 3) return 2;
					for (var i4 = 0; i4 < this.num; i4++)
					{
						if(this.alive[i4] && this.color[i4] == this.color[j] && this.x[i4] == x + 150 && this.y[i4] == y + 150)
						{
							if(n == 4) return 2;
							for (var i5 = 0; i5 < this.num; i5++)
							{
								if(this.alive[i5] && this.color[i5] == this.color[j] && this.x[i5] == x + 200 && this.y[i5] == y + 200)
								{
									if(n == 5) return 2;
								}
							}
						}
					}
				}
			}
		}
	}

	for (var i2 = 0; i2 < this.num; i2++) 
	{
		if(this.alive[i2] && this.color[i2] == this.color[j] && this.x[i2] == x && this.y[i2] == y + 50)
		{
			if(n == 2) return 3;
			for (var i3 = 0; i3 < this.num; i3++)
			{
				if(this.alive[i3] && this.color[i3] == this.color[j] && this.x[i3] == x && this.y[i3] == y + 100)
				{
					if(n == 3) return 3;
					for (var i4 = 0; i4 < this.num; i4++)
					{
						if(this.alive[i4] && this.color[i4] == this.color[j] && this.x[i4] == x && this.y[i4] == y + 150)
						{
							if(n == 4) return 3;
							for (var i5 = 0; i5 < this.num; i5++)
							{
								if(this.alive[i5] && this.color[i5] == this.color[j] && this.x[i5] == x && this.y[i5] == y + 200)
								{
									if(n == 5) return 3;
								}
							}
						}
					}
				}
			}
		}
	}

	for (var i2 = 0; i2 < this.num; i2++) 
	{
		if(this.alive[i2] && this.color[i2] == this.color[j] && this.x[i2] == x - 50 && this.y[i2] == y + 50)
		{
			if(n == 2) return 4;
			for (var i3 = 0; i3 < this.num; i3++)
			{
				if(this.alive[i3] && this.color[i3] == this.color[j] && this.x[i3] == x - 100 && this.y[i3] == y + 100)
				{
					if(n == 3) return 4;
					for (var i4 = 0; i4 < this.num; i4++)
					{
						if(this.alive[i4] && this.color[i4] == this.color[j] && this.x[i4] == x - 150 && this.y[i4] == y + 150)
						{
							if(n == 4) return 4;
							for (var i5 = 0; i5 < this.num; i5++)
							{
								if(this.alive[i5] && this.color[i5] == this.color[j] && this.x[i5] == x - 200 && this.y[i5] == y + 200)
								{
									if(n == 5) return 4;
								}
							}
						}
					}
				}
			}
		}
	}
	return 0;
}
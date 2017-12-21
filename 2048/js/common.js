function mouseDown(e)
{
	mx = e.offsetX || e.layerX;
	my = e.offsetY || e.layerY;
}

function click(e)
{
	mx = e.offsetX || e.layerX;
	my = e.offsetY || e.layerY;

	if(!grid.status)
	{
		if(mx > 290 && my > 350 && mx < 415 && my < 386)
		{
			grid.status = true;
			for (var i = 0; i < 16; i++) 
			{
				grid.alive[i] = false;
			};
			grid.born();
			grid.born();
			ctx3.clearRect(0, 0, 700, 700);
		}
	}
}

function mouseUp(e)
{
	var mx1 = e.offsetX || e.layerX;
	var my1 = e.offsetY || e.layerY;
	var dx = mx1 - mx;
	var dy = my1 - my;

	if(!grid.status)
	{
		return;
	}

	var d = [];
	var alive = [];
	for (var i = 0; i < 16; i++) 
	{
		d[i] = grid.d[i];
		alive[i] = grid.alive[i];
	};

	// 向上
	if(dy < 0 && Math.abs(dy) > Math.abs(dx))
	{
		console.log('向上');
		grid.up();
	}
	//向下
	else if(dy > 0 && Math.abs(dy) > Math.abs(dx))
	{
		console.log('向下');
		grid.down();
	}
	//向左
	else if(dx < 0 && Math.abs(dy) < Math.abs(dx))
	{
		console.log('向左');
		grid.left();
	}
	//向右
	else if(dx > 0 && Math.abs(dy) < Math.abs(dx))
	{
		console.log('向右');
		grid.right();
	}

	for (var i = 0; i < 16; i++) 
	{
		if(d[i] != grid.d[i] || alive[i] != grid.alive[i])
		{
			grid.born();
			break;
		}
	}

	grid.check();
}

window.requestAnimFrame = (function() {
	return window.requestAnimationFrame || window.webkitRequestAnimationFrame || window.mozRequestAnimationFrame || window.oRequestAnimationFrame || window.msRequestAnimationFrame ||
		function( /* function FrameRequestCallback */ callback, /* DOMElement Element */ element) {
			return window.setTimeout(callback, 1000 / 60);
		};
})();
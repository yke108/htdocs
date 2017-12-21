function onClick(e)
{
	mx = e.offsetX || e.layerX;
	my = e.offsetY || e.layerY;

	//重新开始
	if(!snake.gameStatus) {
		if(mx > 340 && mx < 460 && my > 255 && my < 285){
			snake.init();
			ctx1.clearRect(0, 0, canWidth, canHeight);
		}
		return;
	}
	// 向上
	if(calLength2(mx, my, 400, 540) < 400){
		// 判断如果前进方向是垂直直接return
		if(snake.x[snake.num-1] == snake.x[snake.num-2]) return;
		snake.toUp();
		snake.timer = 0;
	}
	// 向下
	if(calLength2(mx, my, 400, 580) < 400){
		// 判断如果前进方向是垂直直接return
		if(snake.x[snake.num-1] == snake.x[snake.num-2]) return;
		snake.toDown();
		snake.timer = 0;
	}
	// 向左
	if(calLength2(mx, my, 360, 560) < 400){
		// 判断如果前进方向是水平直接return
		if(snake.y[snake.num-1] == snake.y[snake.num-2]) return;
		snake.toLeft();
		snake.timer = 0;
	}
	// 向右
	if(calLength2(mx, my, 440, 560) < 400){
		// 判断如果前进方向是水平直接return
		if(snake.y[snake.num-1] == snake.y[snake.num-2]) return;
		snake.toRight();
		snake.timer = 0;
	}
}
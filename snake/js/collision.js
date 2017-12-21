function snakeFruitCollision () {
	for (var i = 0; i < fruit.num; i++) {
		if(snake.x[snake.num-1] == fruit.x[i] && snake.y[snake.num-1] == fruit.y[i]){
			for (var j = snake.num; j > 0; j--) {
				snake.x[j] = snake.x[j-1];
				snake.y[j] = snake.y[j-1];
				snake.direction[j] = snake.direction[j-1];
			}
			switch(snake.direction[0]){
				case 'up':
					snake.y[0] = snake.y[0] + 40;
					snake.direction[0] = 'up';
					break;
				case 'down':
					snake.y[0] = snake.y[0] - 40;
					snake.direction[snake.num] = 'down';
					break;
				case 'left':
					snake.x[0] = snake.x[0] + 40;
					snake.direction[snake.num] = 'left';
					break;
				case 'right':
					snake.x[0] = snake.x[0] - 40;
					snake.direction[0] = 'right';
					break;
			}
			snake.num++;
			snake.timeInterval *= 0.9;
			if(snake.timeInterval < 100) snake.timeInterval = 100;
			data.score += 10;
			var position = fruit.getPosition();
			fruit.x[i] = position[0];
			fruit.y[i] = position[1];
		}
	};
}

function snakeSnakeCollision(){
	for (var i = 0; i < snake.num-1; i++) {
		if(snake.x[snake.num-1] == snake.x[i] && snake.y[snake.num-1] == snake.y[i]){
			snake.gameStatus = false;
			break;
		}
	}
}
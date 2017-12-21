var can1;
var can2;
var ctx1;
var ctx2;
var canWidth;
var canHeight;
var deltaTime;
var currentTime;
var mx;
var my;
var snake;
var bgPic = new Image();
var fruit;
var data;

document.body.onload = game;
function game()
{
	init();
	gameloop();
}

function init()
{
	can1 = document.getElementById('canvas1');
	can2 = document.getElementById('canvas2');
	ctx1 = can1.getContext('2d');
	ctx2 = can2.getContext('2d');
	can1.addEventListener('click', onClick, false);
	canWidth = can1.width;
	canHeight = can1.height;
	currentTime = Date.now();
	deltaTime = 0;
	bgPic.src = "./src/background.png";
  snake = new snakeObj();
	snake.init();
	fruit = new fruitObj();
	fruit.init();
	data = new dataObj();
}

function gameloop()
{
	//60帧
	requestAnimFrame(gameloop);
	//下面是每帧执行的函数
	var now = Date.now();
	deltaTime = now - currentTime;
	currentTime = now;
	// 设置背景
	setBackground();
	snake.draw();
	fruit.draw();
	snakeFruitCollision();
	snakeSnakeCollision();
	data.draw();
}

function setBackground()
{
	ctx2.drawImage(bgPic, 0, 0, canWidth, canHeight);
}
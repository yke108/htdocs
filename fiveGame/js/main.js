var can1;
var can2;
var ctx1;
var ctx2;
var canWidth;
var canHeight;
var current;
var dt;
var chessman;


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

	background(); // 画棋盘背景

	chessman = new chessmanObj();
	chessman.init();

	data = new dataObj();
	data.init();
}

function gameloop()
{
	requestAnimFrame(gameloop);
	var now = Date.now();
	dt = now - current;// 每帧时间时隔
	current = now;// 当前时间

	chessman.draw();
	chessman.minitor();
	chessman.autoPlay();
}
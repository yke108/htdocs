var can1;
var can2;
var ctx1;
var ctx2;
var canWidth;
var canHeight;
var current;
var mx;
var my;
var dt;
var grid;

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
	can3 = document.getElementById('canvas3');
	ctx1 = can1.getContext('2d');
	ctx2 = can2.getContext('2d');
	ctx3 = can3.getContext('2d');
	document.addEventListener('mousedown', mouseDown, false);
	document.addEventListener('mouseup', mouseUp, false);
	document.addEventListener('click', click, false);
	canWidth = can1.width;
	canHeight = can1.height;
	background();
	grid = new gridObj();
	grid.init();
}

function gameloop()
{
	requestAnimFrame(gameloop);
	var now = Date.now();
	dt = now - current;// 每帧时间时隔
	current = now;// 当前时间
	ctx1.clearRect(0, 0, 700, 700);
	grid.draw();
}
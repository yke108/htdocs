function background()
{
	ctx2.save();
	ctx2.rect(0,0,900,900);
	ctx2.fillStyle="#F3BF76";
	ctx2.fill();
	ctx2.strokeStyle = '#664F3F';
	for (var i = 0; i < 15; i++) 
	{
		ctx2.beginPath();
		ctx2.moveTo(50*i+100, 100);
		ctx2.lineTo(50*i+100, 800);
		ctx2.stroke();
		ctx2.beginPath();
		ctx2.moveTo(100, 50*i+100);
		ctx2.lineTo(800, 50*i+100);
		ctx2.stroke();
	};
	ctx2.restore();
}
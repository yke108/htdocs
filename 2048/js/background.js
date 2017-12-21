function background()
{
	ctx2.save();
	ctx2.fillStyle = "#B8AF9E";
	ctx2.fillRect(100, 100, 500, 500);
	ctx2.fillStyle = "#CCC0B2";
	for (var i = 0; i < 4; i++) 
	{
		for (var j = 0; j < 4; j++) 
		{
			ctx2.fillRect(120 * i + 120, 120 * j + 120, 100, 100);
		}
	};
	ctx2.restore();
}
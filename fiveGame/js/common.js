function onClick(e)
{
	var mx = e.offsetX || e.layerX;
	var my = e.offsetY || e.layerY;

	if(data.status)
	{
		for (var j = 0; j < 15; j++) 
		{
			for (var i = 0; i < 15; i++) 
			{
				var x = 50 * i + 100;
				var y = 50 * j + 100;
				var l = calLength2(x, y, mx, my);
				if(l < 625)
				{
					chessman.born(x, y);
					break;
				}
			}
		}	
	}
}
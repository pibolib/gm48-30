if(!oGame.pauseMode)
{
	z += dsp;
	x += hsp;
	y += vsp;
	dsp += grv;
	hsp = lerp(hsp,0,0.03);
	vsp = lerp(vsp,0,0.03);
	time++;
	if(z >= 0)
	{
		if(distance_to_object(oPlayer) < 50)
		{
			dsp = clamp(ceil(-2/(time/32)),-3,999999);	
		}
		else
		{
			dsp = clamp(ceil(-2/(time/128)),-3,999999);
		}
		ground = true;
	}
	depth = -y;
	image_angle += 3;
	if(place_meeting(x,y,oPlayer) and z >= -24 and oPlayer.invun = 0)
	{
		for(i=0;i<4;i++)
		{
			particle(x,y,particleMode.sparkleQuickly,0.3,c_yellow);
		}
		oGame.cash += floor(oGame.phase * 1.25);
		oGame.totalCash += floor(oGame.phase * 1.25);
		instance_destroy();
		sound(coin,"noPitch","noCheckPlay");
	}
	if(place_meeting(x+hsp,y,oWall))
	{
		hsp = -hsp/2;
	}
	if(place_meeting(x,y+vsp,oWall))
	{
		vsp = -vsp/2;
	}
	image_xscale = lerp(image_xscale,1,0.05);
	image_yscale = lerp(image_yscale,1,0.1);
	if(distance_to_object(oPlayer) < 50 and !collision_line(x,y,oPlayer.x,oPlayer.y,oWall,true,false) and z >= -3 and dsp = 0)
	{
		x = approach(x,oPlayer.x,5);
		y = approach(y,oPlayer.y,5);
	}	
}
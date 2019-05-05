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
		dsp = clamp(ceil(-2/(time/128)),-3,999999);
		ground = true;
	}
	depth = -y;
	image_angle += 5;
	if(place_meeting(x,y,oPlayer) and z >= -24)
	{
		for(i=0;i<4;i++)
		{
			particle(x,y,particleMode.sparkleQuickly,0.3,c_yellow);
		}
		oGame.mtime += 450;
		instance_destroy();
		sound(clock,"noPitch","noCheckPlay");
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
}
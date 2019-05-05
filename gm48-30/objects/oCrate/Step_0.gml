if(!oGame.pauseMode)
{
	image_index = floor((hp/mhp)*3);
	if(hp <= 0)
	{
		sound(cratebreak," ","noCheck");
		instance_destroy();
		shake(2);
		switch(choose(0,0,0,0,0,1))
		{
			case 0:
			for(i=0;i<irandom(16);i++)
			{
				instance_create_layer(x,y,"game",oCoin);	
			}
			break;
			case 1:
				instance_create_layer(x,y,"game",oClock);
			break;
		}
		for(i=0;i<15;i++)
		{
			particle(x,y,particleMode.woodShrapnel,1,c_white);
		}
	}
	if(place_meeting(x,y,oBullet))
	{
		xOffsetTime = 16;
		rsp = random_range(-10,10);
		dsp = random_range(0.5,1.5);
		hsp = random_range(-1,1);
		vsp = random_range(-1,1);
		hp -= oGame.gunDMG;
			for(i=0;i<oGame.gunDMG;i++)
		{
			particle(x,y,particleMode.woodShrapnel,1,c_white);
		}
		sound(cratehit," ","noCheck");
		with(instance_nearest(x,y,oBullet))
		{
			instance_destroy();	
		}
	}
	depth = -y;
	angle += rsp;
	rsp = lerp(rsp,0,0.03);
	x += hsp;
	y += vsp;
	z -= dsp;
	z = clamp(z,-15000,0);
	hsp = lerp(hsp,0,0.1);
	vsp = lerp(vsp,0,0.1);
	dsp -= grv;
	if(xOffsetTime > 0)
	{
		xOffset = random_range(-xOffsetTime/4,xOffsetTime/4);
		xOffsetTime--;
	}
	else
	{
		xOffset = 0;	
	}
	if(place_meeting(x+hsp,y,oWall))
	{
		hsp = -hsp/2;
	}
	if(place_meeting(x,y+vsp,oWall))
	{
		vsp = -vsp/2;
	}
}
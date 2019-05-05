if(!oGame.pauseMode)
{
	image_blend = make_color_rgb(red,green,blue);
	if(place_meeting(x,y,oCoin) and invun = 0 and cash > 0 and instance_nearest(x,y,oCoin).z >= 0 and cash < 30)
	{
		with(instance_nearest(x,y,oCoin))
		{
			particle(x,y,particleMode.sparkleSlowly,0.4,c_red);
			instance_destroy();	
		}
		sound(ratcoin," ","noCheck");
		cash++;
	}
	if(cash > topCash)
	{
		topCash = cash;	
	}
	if(cash <= 0)
	{
		dir = -1;
		dtime++;
		if(!dead and z = 0)
		{
			sound(ratdie," ","noCheck");
			dead = true;
			shake(1);
			if(irandom(100) > 90 - topCash)
			{
				instance_create_layer(x,y,"game",oClock);	
			}
		}
		if(dtime > 180)
		{
			green = lerp(green,0,0.2);
			blue = lerp(blue,0,0.2);
			alterX = random_range(-2,2);
			image_alpha = lerp(image_alpha,-0.03,0.1);
			if(image_alpha <= 0)
			{
				instance_destroy();	
			}
		}
	}
	if(place_meeting(x,y,oBullet) and invun = 0 and image_alpha > 0.1 and z >= 0)
	{
		if(!dead)
		{
			sound(rathit," ","noCheck");
		}
		invun = 30;
		for(i=0;i<oGame.gunDMG;i++)
		{
			if(cash > 0)
			{
				cash--;
				instance_create_layer(x,y,"game",oCoin);
			}
		}
		with(instance_nearest(x,y,oBullet))
		{
			instance_destroy();	
		}
		dsp = -4;
	}
	x += hsp;
	y += vsp;
	z += dsp;
	dsp += grv;
	z = clamp(z,-9999999,0);
	if(place_meeting(x+hsp,y,oWall))
	{
		hsp = 0;
		dir = irandom_range(0,3);
		x = xprevious;
	}
	if(place_meeting(x,y+vsp,oWall))
	{
		vsp = 0;
		dir = irandom_range(0,3);
		y = yprevious;
	}
	if(irandom(30000) > 29000 and cash > 0)
	{
		dir = irandom_range(-1,3);
	}
	switch(dir)
	{
		case 0:
			hsp = 1;
			vsp = lerp(vsp,0,0.1);
			if(cash > 0)
			{
				sprite_index = sMouseMove;
			}
			image_xscale = hsp;
		break;
		case 1:
			hsp = -1;
			vsp = lerp(vsp,0,0.1);
			image_xscale = hsp;		
			if(cash > 0)
			{
				sprite_index = sMouseMove;
			}
		break;
		case 2:
			vsp = 1;
			hsp = lerp(hsp,0,0.1);
			if(cash > 0)
			{
				sprite_index = sMouseMove;
			}
		break;
		case 3:
			vsp = -1;
			hsp = lerp(hsp,0,0.1);
			if(cash > 0)
			{
				sprite_index = sMouseMove;
			}
		break;
		default:
			if(cash > 0)
			{
				sprite_index = sMouseIdle;
			}
			else
			{
				sprite_index = sMouseDead;	
			}
			vsp = lerp(vsp,0,0.1);
			hsp = lerp(hsp,0,0.1);
		break;
	}
	depth = -y;
	if(invun > 0)
	{
		invun--;	
		if(cash > 0)
		{
			if(image_alpha = 1)
			{
				image_alpha = 0;	
			}
			else
			{
				image_alpha = 1;	
			}
		}
	}
	else if(cash > 0)
	{
		image_alpha = 1;	
	}
}
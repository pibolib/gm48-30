if(!oGame.pauseMode)
{
	hsp = lerp(hsp,0,0.05);
	vsp = lerp(vsp,0,0.05);
	x += hsp;
	y += vsp;

	hsp = 2 * (-kb(left)+kb(right));
	vsp = 2 * (-kb(up)+kb(down));

	if(abs(hsp) > 0 or abs(vsp) > 0)
	{
		if(abs(hsp) > 0)
		{
			image_xscale = sign(hsp);	
		}
		image_speed = 1;
		sprite_index = sPlayerMove;
	}
	else
	{
		if(shootTime > 0)
		{
			if(x < mouse_x)
			{
				image_xscale = 1;	
			}
			else
			{
				image_xscale = -1;	
			}
			image_speed = 15/oGame.gunReload;
			sprite_index = sPlayerAttack;
		}
		else
		{
			sprite_index = sPlayerIdle;
			image_speed = 1;
		}	
	
	}
	if(invun > 0)
	{
		invun--;
		if(image_alpha = 1)
		{
			image_alpha = 0;	
		}
		else
		{
			image_alpha = 1;	
		}
	}
	else
	{
		image_alpha = 1;
	}
	if(shootTime > 0)
	{
		shootTime--;	
	}
	depth = -y;
	if(place_meeting(x+hsp,y,oWall))
	{
		while(!place_meeting(x+sign(hsp),y,oWall))
		{
			x += sign(hsp);	
		}
		hsp = 0;
	}
	if(place_meeting(x,y+vsp,oWall))
	{
		while(!place_meeting(x,y+sign(vsp),oWall))
		{
			y += sign(vsp);	
		}
		vsp = 0;	
	}
	if(mouse_check_button(mb_left) and shootTime = 0)
	{
		instance_create_layer(x,y-16,"game",oBullet);
		shootTime = oGame.gunReload;
		sound(gunfire," ","noCheck");
		shake(0.5);
	}
	if(place_meeting(x,y,oEnemy) and instance_nearest(x,y,oEnemy).z >= 0 and invun = 0 and instance_nearest(x,y,oEnemy).cash > 0)
	{
		invun = 60;	
		sound(playerhurt," ","noCheck");
	
		for(i=0;i<ceil(clamp(oGame.totalCash/8,0,50));i++)
		{
			if(oGame.cash >= oGame.phase)
			{
				oGame.cash -= oGame.phase;
				instance_create_layer(x,y,"game",oCoin);
			}
		}
	}
	if(place_meeting(x,y,oEnemyBullet) and invun = 0)
	{
		invun = 60;	
		sound(playerhurt," ","noCheck")
		for(i=0;i<ceil(clamp(oGame.totalCash/16,0,50));i++)
		{
			if(oGame.cash >= oGame.phase)
			{
				oGame.cash -= oGame.phase;
				instance_create_layer(x,y,"game",oCoin);
			}
		}
	}
}
depth = -y;
if(place_meeting(x,y,oBullet))
{
	with(instance_nearest(x,y,oBullet))
	{
		if(canCollide)
		{
			particle(x,y,particleMode.sparkleQuickly,0.3,c_yellow);
			instance_destroy();	
		}
	}
}
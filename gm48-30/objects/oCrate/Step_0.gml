image_index = floor((hp/mhp)*3);
if(hp <= 0)
{
	instance_destroy();
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
	for(i=0;i<4;i++)
	{
		particle(x,y,particleMode.woodShrapnel,1,c_white);
	}
}
hp -= 0.25;
depth = -y;
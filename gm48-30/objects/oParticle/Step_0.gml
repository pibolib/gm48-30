if(!active)
{
	switch(mode)
	{
		case particleMode.sparkleSlowly:
		scaleSpeed = 0.01;
		grv = 0.05;
		angleSpeed = random_range(-15,15);
		hsp = random_range(-1,1);
		vsp = random_range(-1,1);
		dsp = random_range(-2,-1);
		sprite_index = sParticleSparkle;
		break;
		
		case particleMode.sparkleQuickly:
		scaleSpeed = 0.01;
		grv = 0;
		dsp = 0;
		vsp = 0;
		hsp = 0;
		sprite_index = sParticleSparkle;
		angleSpeed = random_range(-30,30);
		x += random_range(-8,8);
		y += random_range(-8,8);
		break;
		
		case particleMode.woodShrapnel:
		scaleSpeed = 0.01;
		angleSpeed = 0;
		grv = 0.05;
		hsp = random_range(-2,2);
		vsp = random_range(-2,2);
		dsp = random_range(-3,-1);
		sprite_index = sParticleShrapnel;
		showShadow = true;
		break;
	}
	active = true;
}
else
{
	if(mode = particleMode.woodShrapnel)
	{
		image_angle = point_direction(x,y,x+hsp,y+vsp+dsp);	
	}
	dsp += grv;
	hsp = lerp(hsp,0,0.01);
	vsp = lerp(vsp,0,0.01);
	x += hsp;
	y += vsp;
	z -= dsp;
	image_xscale -= scaleSpeed;
	image_yscale = image_xscale;
	image_angle += angleSpeed;
	depth = -y-z;
	if(image_xscale <= 0)
	{
		instance_destroy();	
	}
}
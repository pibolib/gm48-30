if(!oGame.pauseMode)
{
	image_angle = point_direction(x,y,x+hsp,y+vsp);	
	x += hsp;
	y += vsp;
	z -= dsp;
	dsp += grv;
}
///@function particle
///@arg x
///@arg y
///@arg type
///@arg start
///@arg color

if(oGame.particles)
{
	with(instance_create_layer(x,y,"game",oParticle))
	{
		x = argument0;
		y = argument1;
		mode = argument2;
		image_xscale = argument3;
		image_yscale = image_xscale;
		color = argument4;
	}
}
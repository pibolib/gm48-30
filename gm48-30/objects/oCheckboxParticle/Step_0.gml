image_index = oGame.particles;
if(collision_point(mouse_x,mouse_y,self,false,false) and mouse_check_button_pressed(mb_left))
{
	if(oGame.particles)
	{
		oGame.particles = 0;	
	}
	else
	{
		oGame.particles = 1;	
	}
}
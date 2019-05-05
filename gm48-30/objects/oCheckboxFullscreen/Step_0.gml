image_index = oGame.fullscreen;
if(collision_point(mouse_x,mouse_y,self,false,false) and mouse_check_button_pressed(mb_left))
{
	if(oGame.fullscreen)
	{
		oGame.fullscreen = 0;	
	}
	else
	{
		oGame.fullscreen = 1;	
	}
}
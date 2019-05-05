image_index = oGame.screenshake;
if(collision_point(mouse_x,mouse_y,self,false,false) and mouse_check_button_pressed(mb_left))
{
	if(oGame.screenshake)
	{
		oGame.screenshake = 0;	
	}
	else
	{
		oGame.screenshake = 1;	
	}
}
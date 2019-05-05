if(collision_point(mouse_x,mouse_y,self,false,false) and mouse_check_button(mb_left))
{
	oGame.audioGain = (mouse_x-x)/64;	
}
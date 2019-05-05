draw_set_alpha(1-oGame.transitionAlpha);
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,1-oGame.transitionAlpha);
draw_text_unscaled(x+9,y-6,"SCREENSHAKE");
if(collision_point(mouse_x,mouse_y,self,false,false))
{
	draw_sprite(sCrosshair,0,ceil(mouse_x),ceil(mouse_y));	
}
draw_set_alpha(1);
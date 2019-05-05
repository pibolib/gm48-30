draw_set_alpha(1-oGame.transitionAlpha);
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,1-oGame.transitionAlpha);
draw_sprite(sSliderPoint,0,x+floor(oGame.mainGain*64),y);
draw_set_font(fGameSmall);
if(oGame.mainGain > 0.98)
{
	draw_text_unscaled(x,y+6,"MUSIC: MAX");
}
else if(oGame.mainGain = 0)
{
	draw_text_unscaled(x,y+6,"MUSIC: OFF");
}
else
{
	draw_text_unscaled(x,y+6,"MUSIC: "+string(ceil(oGame.mainGain*100))+"%");
}
if(collision_point(mouse_x,mouse_y,self,false,false))
{
	draw_sprite(sCrosshair,0,ceil(mouse_x),ceil(mouse_y));	
}
draw_set_alpha(1);
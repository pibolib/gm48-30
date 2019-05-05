draw_set_alpha(1-oGame.transitionAlpha);
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,1-oGame.transitionAlpha);
draw_sprite(sSliderPoint,0,x+floor(oGame.audioGain*64),y);
draw_set_font(fGameSmall);
if(oGame.audioGain > 0.98)
{
	draw_text_unscaled(x,y+6,"AUDIO: MAX");
}
else if(oGame.audioGain = 0)
{
	draw_text_unscaled(x,y+6,"AUDIO: OFF");
}
else
{
	draw_text_unscaled(x,y+6,"AUDIO: "+string(ceil(oGame.audioGain*100))+"%");
}

if(collision_point(mouse_x,mouse_y,self,false,false))
{
	draw_sprite(sCrosshair,0,ceil(mouse_x),ceil(mouse_y));	
}
draw_set_alpha(1);
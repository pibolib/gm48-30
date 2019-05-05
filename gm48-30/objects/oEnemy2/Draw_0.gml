draw_set_color(c_black);
draw_set_alpha(image_alpha * 0.3);
draw_ellipse(x-sprite_width/2,y-sprite_height/4,x+sprite_width/2,y+sprite_height/4,false);
draw_set_color(c_white);
if(cash < topCash)
{
	draw_set_alpha(image_alpha);
	draw_healthbar(x-abs(sprite_width)/2,y+z-abs(sprite_height)-3,x+abs(sprite_width)/2,y+z-abs(sprite_height)-2,(cash/topCash)*100,c_red,c_lime,c_lime,0,true,false);	
}
draw_set_alpha(1);
draw_sprite_ext(sprite_index,image_index,x+alterX,y+z,image_xscale,1,0,image_blend,image_alpha);


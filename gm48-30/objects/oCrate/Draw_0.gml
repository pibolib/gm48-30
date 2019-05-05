draw_set_color(c_black);
draw_set_alpha(0.3);
draw_ellipse(x-sprite_width/2,y+sprite_height/2-sprite_height/4,x+sprite_width/2,y+sprite_height/2+sprite_height/4,false);
draw_set_color(c_white);
draw_set_alpha(1);
for(i=0;i<sprite_get_number(sprite_index);i+=0.2)
{
	draw_sprite_ext(sprite_index,floor(i),x+xOffset,y+z-i,image_xscale,image_yscale,angle,c_white,1);
}
if(hp < mhp)
{
	draw_healthbar(x-sprite_width/2,y-sprite_height-3,x+sprite_width/2,y-sprite_height-2,(hp/mhp)*100,c_red,c_lime,c_lime,0,true,false);	
}
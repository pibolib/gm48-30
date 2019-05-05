for(i=0;i<sprite_get_number(sprite_index);i+=0.2)
{
	draw_sprite_ext(sprite_index,floor(i),x,y-i,image_xscale,image_yscale,image_angle,c_white,1);
}
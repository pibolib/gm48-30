if(room = rMenu)
{
	depth = 1500;
	for(i=-1;i<=room_width/16;i++)
	{
		for(j=-1;j<=room_height/16;j++)
		{
			draw_sprite_ext(sBG,0,i*16,j*16,1,1,0,make_color_rgb(127+sin(i*16+gameTime/64)*127,127+sin(180+i*16+gameTime/64)*127,127+sin(i*16+gameTime/64+90)*127),1);
		}
	}
	draw_sprite(sIRRats,0,16,0);
	draw_text_unscaled(0,154,"Post-Jam Beta 1. DO NOT DISTRIBUTE!");
}
else
{
	depth = -3000;	
	if(room = rPrep)
	{
		draw_line(10,27,64,27);
	}
}
draw_sprite(sCrosshair,0,ceil(mouse_x),ceil(mouse_y));
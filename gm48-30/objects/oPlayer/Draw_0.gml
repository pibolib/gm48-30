draw_set_color(c_black);
draw_set_alpha(0.3);
draw_ellipse(x-sprite_width/2,y-sprite_height/4,x-1+sprite_width/2,y+sprite_height/4,false);
draw_set_color(c_white);
draw_set_alpha(1);
draw_self();

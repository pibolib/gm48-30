draw_set_halign(fa_center);
draw_text(x+40,y-12,string(oGame.gunReload/60)+"s");
draw_set_font(fGameSmall);
draw_text(x+40,y-16,"RATE");
draw_set_color(nbColor);
draw_text(x+40,y+17,"COST: "+string(90 + abs((30-oGame.gunReload) * 5)));
draw_set_color(c_white);
draw_set_font(fGame);
draw_set_halign(fa_left);
draw_set_halign(fa_center);
draw_text(x+40,y-12,oGame.gunDMG);
draw_set_font(fGameSmall);

draw_text_unscaled(x+40,y-16,"DAMAGE");
draw_set_color(nbColor);
draw_text_unscaled(x+40,y+17,"COST: "+string(25*oGame.gunDMG));
draw_set_font(fGame);
draw_set_color(c_white);
draw_set_halign(fa_left);
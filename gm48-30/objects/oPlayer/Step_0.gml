hsp = lerp(hsp,0,0.05);
vsp = lerp(vsp,0,0.05);
x += hsp;
y += vsp;

hsp = 2 * (-kb(left)+kb(right));
vsp = 2 * (-kb(up)+kb(down));

depth = -y;
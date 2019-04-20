z += dsp;
x += hsp;
y += vsp;
dsp += grv;
hsp = lerp(hsp,0,0.03);
vsp = lerp(vsp,0,0.03);
time++;
if(z >= 0)
{
	dsp = ceil(-2/(time/128));
	ground = true;
}
depth = -y;
image_xscale = sin(time/32);
if(place_meeting(x,y,oPlayer) and ground)
{
	for(i=0;i<4;i++)
	{
		particle(x,y,particleMode.sparkleQuickly,0.3,c_yellow);
	}
	oGame.cash++;
	instance_destroy();
}

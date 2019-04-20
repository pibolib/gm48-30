display_set_gui_size(320,160);
draw_set_font(fGame);
draw_text(0,0,"CASH: "+string(cash));
if(time mod 3600 <= 600)
{
draw_text(0,12,"TIME: "+string(floor(time/3600))+":0"+string((time mod 3600)/60));
}
else
{
draw_text(0,12,"TIME: "+string(floor(time/3600))+":"+string((time mod 3600)/60));	
}
if(mtime mod 3600 <= 600)
{
draw_text(0,24,"END : "+string(floor(mtime/3600))+":0"+string((mtime mod 3600)/60));
}
else
{
draw_text(0,24,"END : "+string(floor(mtime/3600))+":"+string((mtime mod 3600)/60));	
}
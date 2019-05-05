display_set_gui_size(320,160);
surface_resize(application_surface,320,160);
draw_set_font(fGame);

if(room != rPrep and room != rMenu and room != rWin and room != rLose)
{
	draw_sprite(sCoinsBg,0,0,0);
	draw_text(24,3,string(cash)+"/"+string(bills));
	draw_sprite(sTimerBg,0,8,22);
	draw_sprite_part(sTimerBg,1,15,0,int64((time/mtime)*78),90,23,22);
}
if(room = rPrep)
{
	draw_text_unscaled(12,12,"FUNDS: $"+string(dispCash));
	draw_text_unscaled(12,19,"DEBTS: -$"+string(dispBills));
	draw_text_unscaled(12,29,"USABLE: $"+string(dispDiff));
	draw_text_unscaled(12,39,"TOTAL CASH: $"+string(totalCash));
	draw_text(0,148,"PHASE: "+string(phase+1)+" / 5");
	if(phase = 0)
	{
		draw_text_unscaled(92,6,"HOW TO PLAY\nKill rats and break crates to get money.\nMoney is used to pay bills.\nExtra money can be used to upgrade weaponry \nor as safety for future.\nGetting hit causes loss of money.\nIf you can pay your way \nthrough all five phases, you win!\nWASD-movement, MOUSE-look/aim, \nLMB-shoot, ESC-pause");
	}
}
if(room != transitionTo)
{
	transitionAlpha = lerp(transitionAlpha,1.01,0.1);
	if(transitionAlpha >= 1)
	{
		room_goto(transitionTo);	
	}
}
else
{
	transitionAlpha = lerp(transitionAlpha,0,0.1);	
}
if(room = rWin or room = rLose)
{
	if(room = rWin)
	{
		draw_text(8,8,"YOU WIN!");
		draw_text(8,40,"CASH: "+string(cash));
		draw_text_unscaled(2,60,"JONATHAN OUF: PROGRAMMER, SFX");
		draw_text_unscaled(2,72,"TONY DONG: ARTIST");
		draw_text_unscaled(2,84,"BRIAN NGUYEN: MUSICIAN");
	}
	else if(room = rLose)
	{
		draw_text(8,8,"YOU LOSE...");
		draw_text(8,40,"DEBT: "+string(abs(cash-bills)));
	}
	draw_text(4,144,"<PRESS LMB TO RESTART>");
}

if(pauseMode)
{
	draw_set_alpha(0.3);
	draw_set_color(c_black);
	draw_rectangle(0,0,320,160,false);
	draw_set_alpha(1);
	draw_set_halign(fa_center);
	draw_set_color(c_white);
	draw_text(160,40,"GAME PAUSED");
	draw_set_halign(fa_left);
}
draw_set_color(c_black);
draw_set_alpha(transitionAlpha);
draw_rectangle(0,0,320,160,false);
draw_set_color(c_white);
draw_set_alpha(1);
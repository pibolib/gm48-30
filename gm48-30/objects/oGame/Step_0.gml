if(!pauseMode)
{
	gameTime++;
	if(room != rPrep and room != rMenu and room != rWin and room != rLose)
	{
		if(!debugMode)
		{
			time++;
		}
	}
	if(room = rPrep)
	{
		music(1);	
	}
	else if(room != rPrep and room != rMenu and room != rWin and room != rLose)
	{
		music(0);
	}
	else if(room = rMenu)
	{
		music(2);
	}
	else if(room = rLose)
	{
		music(3);	
	}
	else if(room = rWin)
	{
		music(4);	
	}
	bills = 25 + ceil(totalCash / 3);
	if(time >= mtime)
	{
		transitionTo = rPrep;
		time = 0;
	}
	if(transitionAlpha < 0.3 and room = rPrep and transitionTo = rPrep)
	{
		
		if(difference(dispCash,cash) > 100)
		{
			dispCash = approach(dispCash,cash,100);	
		}
		else if(difference(dispCash,cash) > 10)
		{
			dispCash = approach(dispCash,cash,10);	
		}
		else if(difference(dispCash,cash) > 0)
		{
			dispCash = approach(dispCash,cash,1);	
		}
		else if(difference(dispBills,bills) > 100)
		{
			dispBills = approach(dispBills,bills,100);		
		}
		else if(difference(dispBills,bills) > 10)
		{
			dispBills = approach(dispBills,bills,10);
		}
		else if(difference(dispBills,bills) > 0)
		{
			dispBills = approach(dispBills,bills,1);
		}
		else if(difference(dispDiff,cash-bills) > 100 and dispCash = cash and dispBills = bills)
		{
			dispDiff = approach(dispDiff,cash-bills,100);	
		}
		else if(difference(dispDiff,cash-bills) > 10 and dispCash = cash and dispBills = bills)
		{
			dispDiff = approach(dispDiff,cash-bills,10);
		}
		else if(difference(dispDiff,cash-bills) > 0 and dispCash = cash and dispBills = bills)
		{
			dispDiff = approach(dispDiff,cash-bills,1);	
		}
	}
	if(room != rPrep and room != rMenu and room != rWin and room != rLose and !instance_exists(oCrate) and !instance_exists(oEnemy) and !instance_exists(oCoin) and !instance_exists(oClock))
	{
		transitionTo = rPrep;
	}
	if(room != rPrep and room != rMenu and room != rWin and room != rLose and !instance_exists(oCrate) and !instance_exists(oEnemy))
	{
		if(instance_exists(oCoin))
		{
			with(oCoin)
			{
				x = lerp(x,oPlayer.x,0.5);
				y = lerp(y,oPlayer.y,0.5);
			}
		}
		if(instance_exists(oClock))
		{
			with(oClock)
			{
				x = lerp(x,oPlayer.x,0.5);
				y = lerp(y,oPlayer.y,0.5);
			}
		}
	}
	cash = clamp(cash,0,9999999);
	if(mouse_check_button_released(mb_left) and (room = rWin or room = rLose))
	{
		cash = 25;
		bills = 25;
		totalCash = 0;
		phase = 0;
		gunDMG = 3;
		gunReload = 30;
		transitionTo = rMenu;	
	}
}
if(!pauseMode and room != rMenu and keyboard_check_pressed(vk_escape))
{
	pauseMode = true;
}
else if(pauseMode and keyboard_check_pressed(vk_escape))
{
	pauseMode = false;	
}
window_set_fullscreen(fullscreen);
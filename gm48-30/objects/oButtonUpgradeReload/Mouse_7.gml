image_index = 1;
if(oGame.cash - oGame.bills >= (90 + abs((30-oGame.gunReload) * 5)))
{
	oGame.cash -= (90 + abs((30-oGame.gunReload) * 5));
	oGame.gunReload -= 5;
}
else
{
	noBuyFlash = 60;	
}
sound(buttonup,"noPitch","noCheckPlay");
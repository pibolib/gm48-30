image_index = 0;
if(oGame.cash - oGame.bills >= (25*oGame.gunDMG))
{
	oGame.cash -= (25*oGame.gunDMG);
	oGame.gunDMG++;
}
else
{
	noBuyFlash = 60;	
}
sound(buttonup,"noPitch","noCheckPlay");
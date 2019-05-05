oGame.cash -= oGame.bills;
image_index = 1;
sound(buttonup,"noPitch","noCheckPlay");
if(oGame.cash >= 0)
{
	if(oGame.phase = 0)
	{
		if(!oGame.debugMode)
		{
			oGame.transitionTo = rStage0;
		}
		else
		{
			oGame.transitionTo = rStage0;
		}
	}
	if(oGame.phase = 1)
	{
		oGame.transitionTo = rStage1;	
	}
	if(oGame.phase = 2)
	{
		oGame.transitionTo = rStage2;	
	}
	if(oGame.phase = 3)
	{
		oGame.transitionTo = rStage3;	
	}
	if(oGame.phase = 4)
	{
		oGame.transitionTo = rStage4;	
	}
}
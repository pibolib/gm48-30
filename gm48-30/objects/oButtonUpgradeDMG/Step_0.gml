if(noBuyFlash > 0)
{
	noBuyFlash--;	
	if(time mod 4 = 0)
	{
		if(nbColor = c_white)
		{
			nbColor = c_red;	
		}
		else
		{
			nbColor = c_white;	
		}
	}
}
else
{
	nbColor = c_white;	
}
time++;
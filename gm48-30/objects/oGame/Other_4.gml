if(room != rPrep and room != rMenu)
{
	phase++;
	time = 0;
	mtime = 3600;
}
if(room = rPrep and cash < bills)
{
	transitionTo = rLose;	
}
if(phase = 5 and cash >= bills and room = rPrep)
{
	transitionTo = rWin;	
}
if(room = rPrep)
{
	dispCash = 0;
	dispBills = 0;
	dispDiff = 0;
}
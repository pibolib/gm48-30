mhp = 100;
hp = mhp;

cash = 100;
bills = 15;

phase = 1;
time = 0;
mtime = 7200;
pauseTime = 0;
pauseMode = false;

//GUN STATISTICS
enum gunType
{
	pistol = 0,
	submachineGun = 1,
	grenadeLauncher = 2,
	rocketGrenadeLauncher = 3,
	machineGun = 4,
	shotgun = 5,
	doubleBarrelShotgun = 6
}
enum bulletType
{
	bullet = 0,
	grenade = 1,
	special = 2,
	rpg = 3
}
generate_gun();
surface_resize(application_surface,320,160);


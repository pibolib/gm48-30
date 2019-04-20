gun = irandom_range(0,6);
gunLV = 1;
gunXP = 0;
gunMXP = 50;
gunBulletType = bulletType.bullet;
switch(gun)
{
	case gunType.pistol:
	gunRate = 60;
	gunDMG = 10;
	gunShotCount = 1;
	break;
	case gunType.submachineGun:
	gunRate = 15;
	gunDMG = 3;
	gunShotCount = 1;
	break;
	case gunType.grenadeLauncher:
	gunRate = 120;
	gunDMG = 30;
	gunShotCount = 1;
	gunBulletType = bulletType.grenade;
	break;
	case gunType.rocketGrenadeLauncher:
	gunRate = 120;
	gunDMG = 30;
	gunShotCount = 1;
	gunBulletType = bulletType.rpg;
	break;
	case gunType.machineGun:
	gunRate = 5;
	gunDMG = 1;
	gunShotCount = 1;
	break;
}

/// @description

gml_pragma("global", "constants()");


/////////////////////////////////////////////////////////////////////
// camera
#macro CAM_MOTION_FACTOR         0.1
#macro CAM_RECOIL_REDUC_FACTOR   0.2
#macro CAM_SHAKE_REDUC_FACTOR    0.08


/////////////////////////////////////////////////////////////////////
// kinds of the different object.
enum ObjectCollisionKinds {
	// isn't blocked by any collidable objects
	None		= 0x00, 
	// blocked by player-only collidable objects
	Player		= 0x01, 
	// blocked by enemy-only collidable objects
	Enemy		= 0x02,
	// blocked by entity-only collidable objects
	Entity		= 0x04,
	// blocked by all blocking objects.
	All			= 0x07,
}

/////////////////////////////////////////////////////////////////////
// stats fields
enum StatsFields {
	MaxHealth,
	Invulnerability,
	MovementSpeed,
	ShootRate,
	ShootSpread,
	ShootDamage,
	MaxAmmo,
	MagazineSize,
	ReloadTime,
	
	Count
}

/////////////////////////////////////////////////////////////////////
// player base stats field
enum PlayerBaseStatsFields {
	MaxHealth	    = 80,	
	Invulnerability = 1.5,
	MovementSpeed   = 350,
	ShootRate		= 2.5,
	ShootSpread     = 4,
	ShootDamage     = 9,
	MaxAmmo         = 60,
	MagazineSize    = 6,
	ReloadTime      = 1.5
}

/////////////////////////////////////////////////////////////////////
// enemy triangle
enum EnemyTriangleBaseStatsFields {
	MaxHealth	    = 32,	
	Invulnerability = 0,
	MovementSpeed   = 300,
	ShootRate		= 1,
	ShootSpread     = 0,
	ShootDamage     = 3,
	MaxAmmo         = 0,
	MagazineSize    = 0,
	ReloadTime      = 0
}

enum EnemyTriangleConfiguration {
	PlayerChaseRange = 500,
	HitFreezeCount   = 5
}


/////////////////////////////////////////////////////////////////////
// globals
global.paused = false;
global.item_store = -1;

global.key_left = ord("Q");
global.key_right = ord("D");
global.key_up = ord("Z");
global.key_down = ord("S");
global.key_interact = ord("E");
global.key_pause = vk_escape;
/// @description

gml_pragma("global", "constants()");


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
	MovementSpeed   = 250,
	ShootRate		= 1.5,
	ShootSpread     = 4,
	ShootDamage     = 5,
	MaxAmmo         = 60,
	MagazineSize    = 6,
	ReloadTime      = 1.2
}

/////////////////////////////////////////////////////////////////////
// globals
global.paused = false;
global.item_store = -1;
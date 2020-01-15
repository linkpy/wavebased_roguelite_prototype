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
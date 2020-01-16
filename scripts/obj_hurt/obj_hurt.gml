// @description
// @param obj_id
// @param amnt

var oid = argument0;
var amnt = argument1;

// if the object isn't invulnerable
if( oid.invulnerability_time == 0 ) {
	// compute max amount of dealable damage
	amnt = min(amnt, oid.health_points);
	oid.health_points -= amnt;
	
	// text indicator color
	var col = c_black;
	
	// if the bullet targets the players
	if( object_collision_mask & ObjectCollisionKinds.Player != 0 )
		col = c_red;
	// if the bullet targets the enemies
	if( object_collision_mask & ObjectCollisionKinds.Enemy != 0 )
		col = c_white;
	
	// spawn the text indicator
	obj_spawn_text_indicator(
		oid.x + random_range(-8, 8), 
		oid.y + random_range(-8, 8), 
		string(round(amnt)), col
	);
	
	// if the object is dead
	if( oid.health_points == 0 ) {
		instance_destroy(oid);
		return;
	}
	
	// setup the object
	with(oid) {
		invulnerability_time = sfield_compute(sf_invulnerability);
		fsm_switch_state(fsm_hurt_state);
	}
	return true;
}

return false;
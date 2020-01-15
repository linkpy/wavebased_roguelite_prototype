/// @description
/// @param dx

// if there might be a collision
if( place_meeting(x + argument0, y, obj_collidable) ) {
	// gets the collision object
	var obj = collision_rectangle(
		bbox_left + argument0, bbox_top,
		bbox_right + argument0, bbox_bottom,
		obj_collidable, false, true
	);
	
	// true if the calling instance can collide with player blockers.
	var collide_player = (object_collision_kind & ObjectCollisionKinds.Player) != 0;
	// true if the calling instance can collide with enemy blockers.
	var collide_enemy =  (object_collision_kind & ObjectCollisionKinds.Enemy)  != 0;
	// true if the calling instance can collide with entity blockers.
	var collide_entity = (object_collision_kind & ObjectCollisionKinds.Entity) != 0;
	// true if there is anykind of collisoin
	var collision = (
		   (collide_player and obj.block_players)
		or (collide_enemy and obj.block_enemies)
		or (collide_entity and obj.block_entities)
	);
	
	// if there is a collision
	if( collision ) {
		// incremential movement until the collision happen
		while( not place_meeting(x + sign(argument0), y, obj) )
			x += sign(argument0);
		
		return true;
	}
}

// immediate motion
x += argument0;
return false;
/// @description
/// @param dy

// if there might be a collision
if( place_meeting(x, y + argument0, obj_collidable) ) {
	// gets the collision object
	var obj = collision_rectangle(
		bbox_left, bbox_top + argument0,
		bbox_right, bbox_bottom + argument0,
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
		while( not place_meeting(x, y + sign(argument0), obj) )
			y += sign(argument0);
		
		return true;
	}
}

// immediate motion
y += argument0;
return false;
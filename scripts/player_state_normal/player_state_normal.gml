
/////////////////////////////////////////////////////////////////////
// event step
if( argument0 == ev_step and argument1 == ev_step_normal ) {
	// sprite rotation
	aim_direction = point_direction(x, y, mouse_x, mouse_y);

	// input gathering
	var dx = keyboard_check(global.key_right) - keyboard_check(global.key_left);
	var dy = keyboard_check(global.key_down) - keyboard_check(global.key_up);

	// shooting
	if( mouse_check_button(mb_left) ) {
		// if can shoot
		if( magazine > 0 and shoot_time == 0 ) {
			// set shoot timer
			shoot_time = 1 / sfield_compute(sf_shoot_rate);
			// decrease ammo in magazine
			magazine--;
			
			// spawn displacement
			var dxx = lengthdir_x(64, aim_direction);
			var dyy = lengthdir_y(64, aim_direction);
			
			// bullet spawn
			obj_spawn_projectile(
				spr_proj_player_bullet,
				x + dxx, y + dyy,
				aim_direction, 800,
				sfield_compute(sf_shoot_damage),
				ObjectCollisionKinds.Enemy
			);
		}
	}

	// motion
	obj_move(dx, dy, sfield_compute(sf_movement_speed));
}

/////////////////////////////////////////////////////////////////////
// event step
if( argument0 == ev_step and argument1 == ev_step_normal ) {
	movement_direction = point_direction(x, y, player_id.x, player_id.y);
	
	var dx = lengthdir_x(1, movement_direction);
	var dy = lengthdir_y(1, movement_direction);
	obj_move(dx, dy, sfield_compute(sf_movement_speed));
	
	if( place_meeting(x, y, obj_player) )
		if( obj_hurt(obj_player, sfield_compute(sf_shoot_damage)) )
			obj_camera.shake_amount += 32;
}
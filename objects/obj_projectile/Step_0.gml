// @description

// trail
if( ds_list_size(trail_x_list) > trail_max_size ) {
	ds_list_delete(trail_x_list, 0);
	ds_list_delete(trail_y_list, 0);
}

ds_list_add(trail_x_list, x);
ds_list_add(trail_y_list, y);

// motion
if( obj_move(movement_dir_x, movement_dir_y, movement_speed) ) {
	instance_destroy(id);
}

// collision check
var obj = collision_rectangle(
	bbox_left, bbox_top, bbox_right, bbox_bottom,
	obj_with_stats_fields, false, true
);

// if there is a collision
if( obj != noone ) 
	// if this is a valid collision
	if( obj.object_collision_kind & object_collision_mask != 0 ) 
		obj_hurt(obj, damage_amount);
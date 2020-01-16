/// @description

// enable the view
view_enabled = true;
view_visible[0] = true;

// if a player is present
if( instance_exists(obj_player) )
	obj_cam_center_at(obj_player.x, obj_player.y);
else 
	camera_set_view_pos(view_camera[0], 0, 0);

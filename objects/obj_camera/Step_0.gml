// @description

// if a player exists
if( instance_exists(obj_player) ) {
	// camera info
	var camw = camera_get_view_width(view_camera[0]);
	var camh = camera_get_view_height(view_camera[0]);
	var camx = camera_get_view_x(view_camera[0]) + camw/2;
	var camy = camera_get_view_y(view_camera[0]) + camh/2;
	
	// player info
	var px = obj_player.x;
	var py = obj_player.y;
	
	// move the camera towards the player
	camx = lerp(camx, px, CAM_MOTION_FACTOR);
	camy = lerp(camy, py, CAM_MOTION_FACTOR);
	
	// recoil
	if( recoil_amount > 0 ) {
		var dir = point_direction(mouse_x, mouse_y, px, py);
		var dx = lengthdir_x(recoil_amount, dir);
		var dy = lengthdir_y(recoil_amount, dir);
		
		camx += dx;
		camy += dy;
	}
	
	// shaking
	if( shake_amount > 0 ) {
		var dir = random_range(0, 360);
		var dx = lengthdir_x(shake_amount, dir);
		var dy = lengthdir_y(shake_amount, dir);
		
		camx += dx;
		camy += dy;
	}
	
	// set camera pos
	camera_set_view_pos(
		view_camera[0],
		clamp(camx - camw/2, 0, room_width - camw), 
		clamp(camy - camh/2, 0, room_height - camh)
	);
}

// state reduction
recoil_amount = lerp(recoil_amount, 0, CAM_RECOIL_REDUC_FACTOR);
shake_amount = lerp(shake_amount, 0, CAM_SHAKE_REDUC_FACTOR);
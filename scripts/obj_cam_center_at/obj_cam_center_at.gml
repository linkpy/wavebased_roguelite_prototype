/// @description
/// @param x
/// @param y

var vw = camera_get_view_width(view_camera[0]);
var vh = camera_get_view_height(view_camera[0]);

camera_set_view_pos(
	view_camera[0],
	clamp(argument0 - vw / 2, 0, room_width - vw),
	clamp(argument1 - vh / 2, 0, room_height - vh)
);
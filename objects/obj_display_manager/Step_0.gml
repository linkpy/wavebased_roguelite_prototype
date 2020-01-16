// @description

// window size
var ww = window_get_width();
var wh = window_get_height();

// if the size changed
if( ww != window_width or wh != window_height ) {
	// update the view port
	view_set_xport(0, 0);
	view_set_yport(0, 0);
	view_set_wport(0, ww);
	view_set_hport(0, wh);
	
	// update the camera size
	camera_set_view_size(
		view_camera[0],
		ww, wh
	);
	
	// update the application surface size
	surface_resize(
		application_surface,
		ww, wh
	);
	
	// update the gui layer size
	display_set_gui_size(ww, wh);
	
	// cache the size
	window_width = ww;
	window_height = wh;
}
// @description

// correct mouse posution
var cx = mouse_x - camera_get_view_x(view_camera[0]);
var cy = mouse_y - camera_get_view_y(view_camera[0]);

// draw player cursor
draw_sprite_ext(
	spr_aim_cursor, 0,
	cx, cy,
	2, 2, 0, c_white, 1
);

// draw ammo counter
draw_set_font(fnt_ingame_gui);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_outlined_text(
	cx, cy + 32,
	L("%0 / %1", magazine, ammo_left),
	c_black, c_white, 1, 1, 0
);

// draw reload bar
if( reload_time > 0 ) {
	// reload factor
	var reload_factor = reload_time / sfield_compute(sf_reload_time);
	
	// background
	draw_set_color(c_black);
	draw_rectangle(
		cx - 32, cy + 32 + 22,
		cx + 32, cy + 44 + 22,
		false
	);
	
	// foreground
	draw_set_color(c_white);
	draw_rectangle(
		cx - 30, cy + 34 + 22,
		cx - 30 + (60 * reload_factor), cy + 42 + 22,
		false
	);
}
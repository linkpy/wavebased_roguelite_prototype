// @description

// draw player cursor
draw_sprite_ext(
	spr_aim_cursor, 0,
	mouse_x, mouse_y,
	2, 2, 0, c_white, 1
);

// draw ammo counter
draw_set_font(fnt_ingame_gui);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_outlined_text(
	mouse_x, mouse_y + 32,
	L("%0 / %1", magazine, ammo_left),
	c_black, c_white, 1.5, 1.5, 0
);
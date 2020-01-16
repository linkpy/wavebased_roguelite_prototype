// @description

// alpha animation
if( lifetime < max_lifetime / 2 )
	draw_set_alpha(lifetime / max_lifetime * 2);
else
	draw_set_alpha(1);

// draw state
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_font(fnt_ingame_gui);

// draw text indicator
draw_outlined_text(x, y, text, outline_color, text_color, 2, 2, 0);

// reset alpha
draw_set_alpha(1);
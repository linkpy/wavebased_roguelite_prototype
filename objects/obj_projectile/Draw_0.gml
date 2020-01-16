// @description

// draw the bullet
draw_sprite_ext(
	sprite_index, image_index,
	x, y,
	image_xscale, image_yscale, 
	movement_angle,
	c_white, 1
);

// draw its trail
for( var i = 0; i < ds_list_size(trail_x_list); i++ )
{
	var xx = trail_x_list[| i];
	var yy = trail_y_list[| i];
	
	var f = i / trail_max_size;
	
	draw_sprite_ext(
		sprite_index, image_index, 
		xx, yy,
		image_xscale * (f * 0.75 + 0.25), 
		image_yscale * (f * 0.75 + 0.25), 
		movement_angle,
		c_white, f
	);
}

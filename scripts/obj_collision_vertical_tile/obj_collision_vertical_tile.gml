/// @description 
/// @param dy
/// @param tm


var collided = false

// downward
if( argument0 > 0 ) { 
	var bl = tilemap_get_at_pixel(argument1, bbox_left,  bbox_bottom) & tile_index_mask;
	var br = tilemap_get_at_pixel(argument1, bbox_right, bbox_bottom) & tile_index_mask;
	
	if( bl != 0 or br != 0 ) {
		y = ((bbox_bottom & ~63) - 1) - sprite_bbox_bottom;
		collided = true;
	}
}

// upward
if( argument0 < 0 ) { 
	var tl = tilemap_get_at_pixel(argument1, bbox_left,  bbox_top) & tile_index_mask;
	var tr = tilemap_get_at_pixel(argument1, bbox_right, bbox_top) & tile_index_mask;
	
	if( tl != 0 or tr != 0 ) {
		y = ((bbox_top + 64) & ~63) - sprite_bbox_top;
		collided = true;
	}
}

return collided;
/// @description 
/// @param dx
/// @param tm


var collided = false

// right 
if( argument0 > 0 ) {
	var tr = tilemap_get_at_pixel(argument1, bbox_right, bbox_top)    & tile_index_mask;
	var br = tilemap_get_at_pixel(argument1, bbox_right, bbox_bottom) & tile_index_mask;
	
	if( tr != 0 or br != 0 ) {
		x = ((bbox_right & ~63) - 1) - sprite_bbox_right;
		collided = true;
	}
} 

// left
if( argument0 < 0 ) {
	var tl = tilemap_get_at_pixel(argument1, bbox_left, bbox_top)    & tile_index_mask;
	var bl = tilemap_get_at_pixel(argument1, bbox_left, bbox_bottom) & tile_index_mask;
	
	if( tl != 0 or bl != 0 ) {
		x = ((bbox_left + 64) & ~63) - sprite_bbox_left;
		collided = true;
	}
}

return collided;
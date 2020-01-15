// @description

event_inherited();


// info for object collision
object_collision_kind = ObjectCollisionKinds.Player;


// info for tilemap collision 
coll_tilemap = layer_tilemap_get_id("collision");
sprite_bbox_left   = sprite_get_bbox_left(sprite_index)   - sprite_get_xoffset(sprite_index);
sprite_bbox_right  = sprite_get_bbox_right(sprite_index)  - sprite_get_xoffset(sprite_index);
sprite_bbox_top    = sprite_get_bbox_top(sprite_index)    - sprite_get_yoffset(sprite_index);
sprite_bbox_bottom = sprite_get_bbox_bottom(sprite_index) - sprite_get_yoffset(sprite_index);
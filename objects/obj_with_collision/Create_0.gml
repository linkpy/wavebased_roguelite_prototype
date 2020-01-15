// @description

// info for object collision
object_collision_kind = ObjectCollisionKinds.None;

// info for tilemap collision 
collision_map = layer_tilemap_get_id("collision_map");
sprite_bbox_left   = sprite_get_bbox_left(sprite_index)   - sprite_get_xoffset(sprite_index);
sprite_bbox_right  = sprite_get_bbox_right(sprite_index)  - sprite_get_xoffset(sprite_index);
sprite_bbox_top    = sprite_get_bbox_top(sprite_index)    - sprite_get_yoffset(sprite_index);
sprite_bbox_bottom = sprite_get_bbox_bottom(sprite_index) - sprite_get_yoffset(sprite_index);
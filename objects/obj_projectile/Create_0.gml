// @description

event_inherited();

// trail drawing
trail_max_size = 16;
trail_x_list = ds_list_create();
trail_y_list = ds_list_create();

// projectile
movement_angle = 0;
movement_dir_x = 0;
movement_dir_y = 0;
movement_speed = 0;
damage_amount = 0;
object_collision_mask = ObjectCollisionKinds.None;

// collision
object_collision_kind = ObjectCollisionKinds.Entity;

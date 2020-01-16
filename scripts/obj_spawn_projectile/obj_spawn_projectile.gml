/// @description
/// @param spr
/// @param x
/// @param y
/// @param dir
/// @param mv_spd
/// @param dmg_amnt
/// @param coll_mask

var i = instance_create_layer(argument1, argument2, "instances", obj_projectile);
i.sprite_index = argument0;
i.movement_angle = argument3;
i.movement_dir_x = lengthdir_x(1, argument3);
i.movement_dir_y = lengthdir_y(1, argument3);
i.movement_speed = argument4;
i.damage_amount = argument5;
i.object_collision_mask = argument6;
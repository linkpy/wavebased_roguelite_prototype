// @description

// sprite rotation
aim_direction = point_direction(x, y, mouse_x, mouse_y);

// input gathering
var dx = keyboard_check(vk_right) - keyboard_check(vk_left);
var dy = keyboard_check(vk_down) - keyboard_check(vk_up);

// motion
obj_move(dx, dy, sfield_compute(sf_movement_speed));
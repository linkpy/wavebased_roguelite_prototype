// @description

var dx = keyboard_check(vk_right) - keyboard_check(vk_left);
var dy = keyboard_check(vk_down) - keyboard_check(vk_up);

obj_move(dx, dy, 300, coll_tilemap);
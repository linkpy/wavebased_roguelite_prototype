/// @description 
/// @param dx
/// @param dy
/// @param speed
/// @param tm


// arguments
var dx = argument0;
var dy = argument1;
var spd = argument2;
var tm = argument3;

// displacement
var xx = dx * spd * delta_time / 1000000;
var yy = dy * spd * delta_time / 1000000;

// return variable
var collided = false;

// vertical motion
collided = obj_collision_vertical_object(yy) or collided;
collided = obj_collision_vertical_tile(dy, tm) or collided;

// horizontal motion
collided = obj_collision_horizntal_object(xx) or collided;
collided = obj_collision_horizontal_tile(dx, tm) or collided;

return collided;
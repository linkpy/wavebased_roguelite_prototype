// @description

// lifetime
lifetime -= delta_time / 1000000;

// if lifetime expired
if( lifetime <= 0 )
	instance_destroy(id);

// position animation
y = initial_y - sin(pi * (1 - lifetime / max_lifetime)) * 96;
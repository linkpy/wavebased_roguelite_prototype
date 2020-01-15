// @description

// do nothing if paused
if( global.paused )
	return;

// update timers
invulnerability_time = max(invulnerability_time - delta_time / 1000000, 0);
shoot_time = max(shoot_time - delta_time / 1000000, 0);
reload_time = max(reload_time - delta_time / 1000000, 0);
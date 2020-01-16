// @description

// do nothing if paused
if( global.paused )
	return;

// state
var was_reloading = reload_time > 0;

// update timers
invulnerability_time = max(invulnerability_time - delta_time / 1000000, 0);
shoot_time = max(shoot_time - delta_time / 1000000, 0);
reload_time = max(reload_time - delta_time / 1000000, 0);

// end of reloading
if( was_reloading and reload_time == 0 ) {
	// if there are some ammo left
	if( ammo_left > 0 ) {
		magazine = min( sfield_compute(sf_magazine_size), ammo_left );
		ammo_left -= magazine;
	}
}

// start of reloading
if( magazine == 0 and ammo_left > 0 and reload_time == 0 ) {
	reload_time = sfield_compute(sf_reload_time);	
}
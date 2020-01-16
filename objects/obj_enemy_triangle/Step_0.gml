// @description


// Inherit the parent event
event_inherited();

// if paused
if( global.paused ) {
	if( alarm[0] > 0 )
		alarm[0] += 1;
	
	return;
}

// fsm
fsm_event(ev_step, ev_step_normal);
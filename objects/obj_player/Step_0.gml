// @description

event_inherited();

// FSM
if( not global.paused )
	fsm_event(ev_step, ev_step_normal);

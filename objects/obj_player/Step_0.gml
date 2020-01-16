// @description

event_inherited();

// if paused
if( global.paused )
	return;

// FSM
fsm_event(ev_step, ev_step_normal);

// sprite
if( sprite_index == spr_player_body_white and invulnerability_time == 0 )
	sprite_index = spr_player_body;
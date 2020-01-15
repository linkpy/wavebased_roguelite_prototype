/// @description
/// @param ev
/// @param subev

if( fsm_current_state != -1 )
	script_execute(fsm_current_state, argument0, argument1);
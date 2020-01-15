
/////////////////////////////////////////////////////////////////////
// event create
if( argument0 == ev_create ) {
	invulnerability_time = sfield_compute(sf_invulnerability);
	fsm_switch_state(player_state_normal);
}
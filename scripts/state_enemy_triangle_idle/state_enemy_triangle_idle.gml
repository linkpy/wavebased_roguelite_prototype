
/////////////////////////////////////////////////////////////////////
// event step
if( argument0 == ev_step and argument1 == ev_step_normal )
	if( distance_to_object(player_id) < EnemyTriangleConfiguration.PlayerChaseRange )
		fsm_switch_state(state_enemy_triangle_chase);
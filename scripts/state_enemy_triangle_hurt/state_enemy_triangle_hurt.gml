
/////////////////////////////////////////////////////////////////////
// event create
if( argument0 == ev_create ) {
	sprite_index = spr_enemy_triangle_white;
	alarm[0] = EnemyTriangleConfiguration.HitFreezeCount;
}

/////////////////////////////////////////////////////////////////////
// event destroy
if( argument0 == ev_destroy )
	sprite_index = spr_enemy_triangle;	

/////////////////////////////////////////////////////////////////////
// event alarm0
if( argument0 == ev_alarm and argument1 == 0 ) 
	fsm_switch_state(state_enemy_triangle_chase);

// @description

event_inherited();

// FSM 
fsm_current_state = -1;
fsm_hurt_state = -1;

// stats fields
sf_max_health      = sfield_create(1, 1, 0);
sf_invulnerability = sfield_create(1, 1, 0);
sf_movement_speed  = sfield_create(1, 1, 0);
sf_shoot_rate      = sfield_create(1, 1, 0);
sf_shoot_spread    = sfield_create(1, 1, 0);
sf_shoot_damage    = sfield_create(1, 1, 0);
sf_max_ammo        = sfield_create(1, 1, 0);
sf_magazine_size   = sfield_create(1, 1, 0);
sf_reload_time     = sfield_create(1, 1, 0);

// stats values
health_points        = sfield_compute(sf_max_health);
invulnerability_time = 0;
shoot_time           = 0;
ammo_left            = sfield_compute(sf_max_ammo);
magazine			 = sfield_compute(sf_magazine_size);
reload_time          = 0;
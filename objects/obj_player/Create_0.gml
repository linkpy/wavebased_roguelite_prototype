// @description

event_inherited();

// info for drawing
aim_direction = 0;

// info for object collision
object_collision_kind = ObjectCollisionKinds.Player;

// stats field
sfield_set_base(sf_max_health,      PlayerBaseStatsFields.MaxHealth);
sfield_set_base(sf_invulnerability, PlayerBaseStatsFields.Invulnerability);
sfield_set_base(sf_movement_speed,  PlayerBaseStatsFields.MovementSpeed);
sfield_set_base(sf_shoot_rate,      PlayerBaseStatsFields.ShootRate);
sfield_set_base(sf_shoot_spread,    PlayerBaseStatsFields.ShootSpread);
sfield_set_base(sf_shoot_damage,    PlayerBaseStatsFields.ShootDamage);
sfield_set_base(sf_max_ammo,        PlayerBaseStatsFields.MaxAmmo);
sfield_set_base(sf_magazine_size,   PlayerBaseStatsFields.MagazineSize);
sfield_set_base(sf_reload_time,     PlayerBaseStatsFields.ReloadTime);

// stats values
health_points        = sfield_compute(sf_max_health);
invulnerability_time = 0;
shoot_time           = 0;
ammo_left            = sfield_compute(sf_max_ammo);
magazine			 = sfield_compute(sf_magazine_size);
reload_time          = 0;

// FSM
fsm_switch_state(player_state_normal);
fsm_hurt_state = player_state_hurt;
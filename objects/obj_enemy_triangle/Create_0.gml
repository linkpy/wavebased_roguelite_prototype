// @description


// Inherit the parent event
event_inherited();

// state info
movement_direction = 0;

// collision
object_collision_kind = ObjectCollisionKinds.Enemy;
object_collision_mask = ObjectCollisionKinds.Player;

// player info
player_id = instance_find(obj_player, 0);

// stats fields
sfield_set_base(sf_max_health,      EnemyTriangleBaseStatsFields.MaxHealth);
sfield_set_base(sf_invulnerability, EnemyTriangleBaseStatsFields.Invulnerability);
sfield_set_base(sf_movement_speed,  EnemyTriangleBaseStatsFields.MovementSpeed);
sfield_set_base(sf_shoot_rate,      EnemyTriangleBaseStatsFields.ShootRate);
sfield_set_base(sf_shoot_spread,    EnemyTriangleBaseStatsFields.ShootSpread);
sfield_set_base(sf_shoot_damage,    EnemyTriangleBaseStatsFields.ShootDamage);
sfield_set_base(sf_max_ammo,        EnemyTriangleBaseStatsFields.MaxAmmo);
sfield_set_base(sf_magazine_size,   EnemyTriangleBaseStatsFields.MagazineSize);
sfield_set_base(sf_reload_time,     EnemyTriangleBaseStatsFields.ReloadTime);

health_points = sfield_compute(sf_max_health);

// fsm
fsm_switch_state(state_enemy_triangle_idle);
fsm_hurt_state = state_enemy_triangle_hurt;
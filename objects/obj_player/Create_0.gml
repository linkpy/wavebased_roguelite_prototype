// @description

event_inherited();

// info for drawing
aim_direction = 0;

// info for object collision
object_collision_kind = ObjectCollisionKinds.Player;

// stats field
sf_max_health      = sfield_set_base(sf_max_health,      PlayerBaseStatsFields.MaxHealth);
sf_invulnerability = sfield_set_base(sf_invulnerability, PlayerBaseStatsFields.Invulnerability);
sf_movement_speed  = sfield_set_base(sf_movement_speed,  PlayerBaseStatsFields.MovementSpeed);
sf_shoot_rate      = sfield_set_base(sf_shoot_rate,      PlayerBaseStatsFields.ShootRate);
sf_shoot_spread    = sfield_set_base(sf_shoot_spread,    PlayerBaseStatsFields.ShootSpread);
sf_shoot_damage    = sfield_set_base(sf_shoot_damage,    PlayerBaseStatsFields.ShootDamage);
sf_max_ammo        = sfield_set_base(sf_max_ammo,        PlayerBaseStatsFields.MaxAmmo);
sf_magazine_size   = sfield_set_base(sf_magazine_size,   PlayerBaseStatsFields.MagazineSize);
sf_reload_time     = sfield_set_base(sf_reload_time,     PlayerBaseStatsFields.ReloadTime);
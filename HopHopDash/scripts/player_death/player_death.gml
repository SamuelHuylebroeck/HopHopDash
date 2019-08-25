//player_death
lives--;
with(obj_game){
	alarm[1] = room_speed*respawn_timer
}
particle_explosion(obj_death_particle,30);
instance_destroy();
//player_death
lives--;
particle_explosion(obj_death_particle,30);
audio_play_sound(snd_hit_hurt,1,false);
instance_destroy();
with(obj_game){
	if(lives > 0){
		alarm[1] = room_speed*respawn_timer;
	}else{
		alarm[2] = room_speed;
	}
}
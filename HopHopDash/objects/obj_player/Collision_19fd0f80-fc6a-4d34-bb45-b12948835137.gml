/// @description Insert description here
// You can write your code in this editor
audio_play_sound(snd_score,1,false);
with(other){
	instance_destroy();
	particle_explosion(obj_score_particle,10)
}
score+=10;
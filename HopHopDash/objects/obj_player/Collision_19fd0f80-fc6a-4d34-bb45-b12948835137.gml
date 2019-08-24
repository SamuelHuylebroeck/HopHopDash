/// @description Insert description here
// You can write your code in this editor
audio_play_sound(snd_score,1,false);
with(other){
	instance_destroy();
		repeat(10){
		instance_create_layer(x,y,"Instances",obj_score_particle)
	}
}
score+=10;
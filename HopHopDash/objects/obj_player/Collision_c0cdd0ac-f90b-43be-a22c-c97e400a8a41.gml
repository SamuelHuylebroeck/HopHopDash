/// @description Insert description here
// You can write your code in this editor
var new_checkpoint = other;
with(obj_game){
	if(active_checkpoint != new_checkpoint){
		audio_play_sound(snd_checkpoint_hit,1,false);
		with(active_checkpoint){
			sprite_index = spr_checkpoint_inactive;
		}
		active_checkpoint = new_checkpoint;
		with(new_checkpoint){
			sprite_index = spr_checkpoint_active;
		}
	}
}
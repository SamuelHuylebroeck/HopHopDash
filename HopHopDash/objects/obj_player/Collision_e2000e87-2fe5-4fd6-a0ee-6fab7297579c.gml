/// @description Insert description here
// You can write your code in this editor
with(obj_game){
	audio_play_sound(snd_stage_pass,1,false);
	active_checkpoint = 0;
	switch(room){
		case rm_game:
			room_goto(rm_tower);
			break;
		case rm_tower:
			room_goto(rm_win)
			break;
	}
}
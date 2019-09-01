/// @description Respawn Code
// You can write your code in this editor
if(active_checkpoint == 0){
	show_debug_message("No Checkpoint is active, using workaround respawn code");
	room_restart();
}else{
	with(active_checkpoint){
		particle_explosion(obj_score_particle,20);
	}
	var position_correction = 5;
	instance_create_layer(active_checkpoint.x,active_checkpoint.y-position_correction,"Instances",obj_player)
}
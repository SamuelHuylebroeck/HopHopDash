/// @description Respawn Code
// You can write your code in this editor
if(active_checkpoint == 0){
	room_restart();
}else{
	instance_create_layer(active_checkpoint.x,active_checkpoint.y,"Instances",obj_player)

}
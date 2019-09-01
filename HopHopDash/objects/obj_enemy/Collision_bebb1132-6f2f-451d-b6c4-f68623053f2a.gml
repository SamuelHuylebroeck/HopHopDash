/// @description Insert description here
// You can write your code in this editor
if(!boundary_on_cd){
	show_debug_message("switching direction")
	walking_speed *=-1;
	boundary_on_cd = true;
	alarm[0] = boundary_cd;
}

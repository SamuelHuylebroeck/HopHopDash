/// @description Movement and animation
// You can write your code in this editor

//Get player input
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);
key_dash = keyboard_check_pressed(vk_lcontrol);

if(dash_steps_remaining == 0 && key_dash){
	dash_steps_remaining = dash_steps;
	dash_direction = moving_right ? 1:-1;
}
var is_dashing = dash_steps_remaining>0;

//Calculate Horizontal Movement
var move = key_right - key_left;
hsp = is_dashing ? dash_direction *dash_speed: move*walkspd;

if(!is_dashing){
 vsp = vsp+grv
}else{
	vsp=0;
	dash_steps_remaining--;
}


var on_ground = place_meeting(x,y+1,obj_wall)

if((nrofjumps <= 0) && on_ground){
	nrofjumps = 2;
}


if(!jump_on_cd && !is_dashing && nrofjumps > 0 && (key_jump)){
	alarm[0] = jump_cd;
	jump_on_cd = true;
	if(nrofjumps == 1){
		particle_explosion(obj_jump_particle,5);
	}
	nrofjumps--;
	vsp -= jumpValue;
}

//execute_movement(hsp,vsp)
//Horizontal Collision
if(!place_empty(x+hsp,y,obj_wall)){
	while(!place_meeting(x+sign(hsp),y,obj_wall)){
		x+=sign(hsp);
	}
	hsp=0;
}

//Vertical Collision
if(!place_empty(x,y+vsp,obj_wall)){
	while(!place_meeting(x,y+sign(vsp),obj_wall)){
		y+=sign(vsp);
	}
	vsp=0;
}

//Execute movement
x+=hsp;
y+=vsp;

//Animation
if(is_dashing){
	sprite_index = spr_player_dashing;
	
}else if(!on_ground){
	sprite_index = spr_player_jumping;
}else{
	sprite_index = spr_player_rest;
}
//Flip sprite direction when starting to move in a different direction
if(sign(hsp) < 0 && moving_right ){
	image_xscale *= -1;
	moving_right = false;
}
if(sign(hsp) >0 && !moving_right){
	image_xscale *= -1;
	moving_right = true;
}

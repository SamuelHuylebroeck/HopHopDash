/// @description Insert description here
// You can write your code in this editor

//Get player input
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);

//Calculate Horizontal Movement
var move = key_right - key_left;
hsp = move*walkspd;

vsp = vsp+grv

var on_ground = place_meeting(x,y+1,obj_wall)

if((nrofjumps <= 0) && on_ground){
	nrofjumps = 2;	
}
if(nrofjumps > 0 && (key_jump)){
	nrofjumps--;
	vsp -= jumpValue;
}

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
if(!on_ground){
	sprite_index = spr_player_jumping;
}else{
	sprite_index = spr_player_rest;
}
 /*
if(sign(hsp) != 0){
	image_xscale *= sign(hsp);
}
*/
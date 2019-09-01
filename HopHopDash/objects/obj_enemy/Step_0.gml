/// @description Insert description here
// You can write your code in this editor
hsp=walking_speed;
execute_movement(hsp,vsp);
//Flip sprite direction when starting to move in a different direction
if(sign(hsp) < 0 && moving_right ){
	image_xscale *= -1;
	moving_right = false;
}
if(sign(hsp) >0 && !moving_right){
	image_xscale *= -1;
	moving_right = true;
}

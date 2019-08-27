//execute_movement(hsp,vsp)
var hsp = argument0;
var vsp = argument1;

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
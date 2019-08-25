//particle_explosion(obj_particlen particle_count)
var obj_particle = argument0;
var particle_count = argument1;
repeat(particle_count){
	instance_create_layer(x,y,"Instances",obj_particle)
}
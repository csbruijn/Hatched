/// @description Insert description here
// You can write your code in this editor


// Check for collision with Swarm
nearbyFlies = collision_rectangle(x-lookRange, y-lookRange,
x+lookRange, y+lookRange,obj_swarm,false,true);

// trigger flie eating 
if nearbyFlies {
	alarm [0] =2
}




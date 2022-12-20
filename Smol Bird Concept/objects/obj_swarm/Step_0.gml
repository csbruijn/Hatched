/// @description Insert description here
// You can write your code in this editor


//depth sorting
depth =-y

// Check for collision with Swarm
nearbyFrog = collision_rectangle(x-(2*lookRange), y-lookRange,
x+(2*lookRange), y+(3*lookRange),obj_renee,false,true);

// trigger flie eating 
if nearbyFrog {
	if (dinnerTime == false) {
		dinnerTime = true;
		global.playerControl=false; 
		alarm[0] = 90;
	}
		if (obj_swarm.x > obj_renee.x) {
		obj_swarm.x -= 3 ;
		}
		if (obj_swarm.x < obj_renee.x) {
		obj_swarm.x += 3 ;
		}
		if (obj_swarm.y < obj_renee.y) {
		obj_swarm.y += 3 ;
		}
		if (obj_swarm.x < obj_renee.x) {
		obj_swarm.x += 3 ;
		
	}
}



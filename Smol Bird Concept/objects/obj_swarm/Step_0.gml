/// @description Insert description here
// You can write your code in this editor


//depth sorting
depth =-y

// Check for collision with Swarm
nearbyFrog = collision_rectangle(x-(lookRange), y-(lookRange),
x+(lookRange), y+(2*lookRange),obj_renee,false,true);

// trigger flie eating 
if nearbyFrog {
	if (dinnerTime == false) {
		dinnerTime = true;
		global.playerControl=false; 
		alarm[0] = 90;
		obj_renee.alarm[0] = 60;
	}
		if (obj_swarm.x > obj_renee.x-50) {
		obj_swarm.x -= 6 ;
		}
		if (obj_swarm.x < obj_renee.x-50) {
		obj_swarm.x += 6 ;
		}
		if (obj_swarm.y < obj_renee.y-250) {
		obj_swarm.y += 6 ;
		}
		if (obj_swarm.y > obj_renee.y-250) {
		obj_swarm.x -= 6 ;
		
	}
}



/// @description Insert description here
// You can write your code in this editor


//depth sorting
depth =-y

// Check for collision with Swarm
nearbyFrog = collision_rectangle(x-(lookRange), y-(lookRange),
x+(lookRange), y+(lookRange),obj_frog_mouth,false,true);

// trigger flie eating 
if nearbyFrog {
	if (dinnerTime == false) {
		dinnerTime = true;
		 global.playerControl=false; 
		 alarm[0] = 90;
		obj_renee.alarm[0] = 60;
		show_debug_message(obj_swarm.y);
	}
		if (obj_swarm.y > obj_frog_mouth.y) {
		obj_swarm.y -= 6 ;
		}
		if (obj_swarm.y < obj_frog_mouth.y) {
		obj_swarm.y += 6 ;
		}
		if (obj_swarm.x > obj_frog_mouth.x) {
		obj_swarm.x -= 6 ;
		}
		if (obj_swarm.x < obj_frog_mouth.x) {
		obj_swarm.x += 6 ;
		}
	}



// move audio emmiter with me 
audio_emitter_position(myEmitter, x, y ,0);


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



 


if (keyboard_check_pressed(vk_space) && distance_to_object(obj_player) < 300) { 
	path_end()
	
		xOpposite = obj_swarm.x + (obj_swarm.x - obj_player.x);
		yOpposite = obj_swarm.y + (obj_swarm.y - obj_player.y);
		pushPath = path_add();
		if !(collision_point(x,y,obj_par_environment,0,1)) {
			mp_linear_path_object(pushPath, xOpposite, yOpposite, 12 ,obj_par_environment)
		}
		else {
			mp_linear_path(pushPath, xOpposite, yOpposite, 12, 0)
		}
		path_start(pushPath,8,0,0)
		alarm [1] = 250 ;
		alarm[2] = room_speed;
		}



// move audio emmiter with me 
audio_emitter_position(myEmitter, x, y ,0);


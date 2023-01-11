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

/*if (keyboard_check_pressed(vk_space) && distance_to_object(obj_player) < 300) 
	{
    playerdirection = point_direction(x, y, obj_player.x, obj_player.y)
    direction = playerdirection + 180
    speed = 5
	alarm[2] = room_speed;
	}
*/

 


if (keyboard_check_pressed(vk_space) && distance_to_object(obj_player) < 300) { 
	xDistance = sqrt((obj_swarm.x - obj_player.x) * (obj_swarm.x -  obj_player.x));
	yDistance = sqrt((obj_swarm.y - obj_player.y) * (obj_swarm.y -  obj_player.y));
	path = path_add();
	mp_linear_path_object(path, xDistance, yDistance, 12 ,obj_par_environment)
	alarm [1] = 150 ;
	alarm[2] = room_speed;
	}

// move audio emmiter with me 
audio_emitter_position(myEmitter, x, y ,0);


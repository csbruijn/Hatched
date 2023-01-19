/// @description Insert description here
// You can write your code in this editor





if (keyboard_check_pressed(vk_space) && distance_to_object(obj_player) < 300)  { 
	path_end()
	if !instance_exists(obj_cooldown) {
		xOpposite = (obj_swarm.x + (obj_swarm.x - obj_player.x));
		yOpposite = (obj_swarm.y + (obj_swarm.y - obj_player.y));
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

}





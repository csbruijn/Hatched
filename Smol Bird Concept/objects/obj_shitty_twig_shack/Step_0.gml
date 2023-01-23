/// @description Insert description here
// You can write your code in this editor



if !isPlaced {
	x = mouse_x; 
	y = mouse_y; 
	
	if !collision_point(x, y, obj_par_environment, true, true){
		if mouse_check_button_pressed(mb_left) {
			isPlaced = true;
			global.playerControl = true; 
		}
	}
}



if isPlaced{ 
	depth = -y+1
}
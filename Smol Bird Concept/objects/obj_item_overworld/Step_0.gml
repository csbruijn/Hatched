//item sprite
sprite_index = item.icon;


// picking up item with space
if keyboard_check_pressed(vk_space) { 
	if place_meeting(x,y,obj_player) {
		item_add (item) ;
		instance_destroy();
	}
}



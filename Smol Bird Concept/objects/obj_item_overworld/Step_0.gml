//item sprite
sprite_index = item.icon;


// picking up item with F
if keyboard_check_pressed(ord("F")) { 
	if place_meeting(x,y,obj_player) {
		item_add (item) ;
		instance_destroy();
	}
}

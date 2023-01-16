//item sprite
sprite_index = item.sprite;
if (item = global.item_list.twig && !randomSprite =1 ) { 
	image_index = random_range(0,3)
	randomSprite =1 
}

// picking up item with F
if keyboard_check_pressed(ord("F")) { 
	if place_meeting(x,y,obj_player) {
		item_add (item) ;
		instance_destroy();
	}
}

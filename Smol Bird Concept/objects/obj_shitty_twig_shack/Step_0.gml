/// @description Insert description here
// You can write your code in this editor

nearbyMaterial = collision_rectangle(x+100, y+100, x-100,y-100, obj_item_overworld,0,1 ) ;

if nearbyMaterial && isPlaced {
	if ((twigsAdded < requiredTwigs) && (obj_item_overworld.item = global.item_list.twig)) {
		twigsAdded += 1; 
		instance_destroy(nearbyMaterial);
	}
	if ((grassAdded < requiredGrass)&& (obj_item_overworld.item = global.item_list.grass)) {
		grassAdded += 1; 
		instance_destroy(nearbyMaterial);
	}
	if ((mudAdded < requiredMud)&& (obj_item_overworld.item = global.item_list.mud)) {
		mudAdded += 1; 
		instance_destroy(nearbyMaterial);
	}
}

if !isPlaced {
	x = mouse_x; 
	y = mouse_y; 
	
	if !collision_point(x, y, obj_par_environment, true, true){
		if mouse_check_button_pressed(mb_left) {
			isPlaced = true;
		}
	}
}

if (requiredTwigs == twigsAdded) && (requiredGrass == grassAdded) && (requiredMud == mudAdded) { 
	image_alpha = 1;
	isBuild = true; 
}
else {
	image_alpha =0.5;
}




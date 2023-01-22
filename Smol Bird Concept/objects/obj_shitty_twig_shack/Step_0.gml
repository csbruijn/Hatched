/// @description Insert description here
// You can write your code in this editor

nearbyMaterial = collision_rectangle(x+100, y+100, x-100,y-100, obj_item_overworld,0,1 ) ;
		
	
if nearbyMaterial {
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



if (requiredTwigs == twigsAdded) && (requiredGrass == grassAdded) && (requiredMud == mudAdded) { 
	image_alpha = 1;
}
else {
	image_alpha =0.5;
}




/// @description Insert description here
// You can write your code in this editor

// If player has control 
if (global.playerControl == true) {
	if (!instance_exists(obj_inventory_base)) {
		instance_create_depth(x,y,-10000,obj_inventory_base);
	}
	else {
		instance_destroy(obj_inventory_base)
	}

}



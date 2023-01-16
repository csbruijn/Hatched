/// @description Insert description here
// You can write your code in this editor
if (global.playerControl = true) {
	if !instance_exists(obj_inventory_main) {
		instance_create_depth(0,0,0, obj_inventory_main)
	}
	else {
		instance_destroy(obj_inventory_main)
	}
}




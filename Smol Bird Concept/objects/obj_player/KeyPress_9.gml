/// @description Insert description here
// You can write your code in this editor
if (global.playerControl = true) {
	if !instance_exists(obj_inventory_main) {
		instance_create_depth(0,0,0, obj_inventory_main);
		instance_create_depth(0,0,-999,obj_button_journal);
		instance_create_depth(0,0,-999,obj_button_inventory);
		instance_create_depth(0,0,-999,obj_button_feathers);
		instance_create_depth(0,0,-999,obj_button_overview);
	}
	else {
		instance_destroy(obj_inventory_main)
	}
}




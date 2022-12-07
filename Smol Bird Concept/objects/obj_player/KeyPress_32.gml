/// @description Interaction key
// You can write your code in this editor


if (global.playerControl == true && !(nearbyItem == noone || nearbyItem == undefined)) { 
	if (inventorySlot01 == noone || inventorySlot01 == undefined) {
		show_debug_message("picking up")
		inventorySlot01 = nearbyItem; 
		alarm[0] = 2
	}
	else {
		if (inventorySlot02 == noone || inventorySlot02== undefined) {
			show_debug_message("picking up")
			inventorySlot02 = nearbyItem; 
			alarm[0] = 2
		}
	}
	if (inventorySlot03 == noone || inventorySlot03== undefined) {
		show_debug_message("picking up")
		inventorySlot03 = nearbyItem; 
		alarm[0] = 2
	}
	if (inventorySlot04 == noone || inventorySlot04 == undefined) {
		show_debug_message("picking up")
		inventorySlot04 = nearbyItem; 
		alarm[0] = 2
	}
	else {
		show_debug_message("Inventory is full") 
	}
}
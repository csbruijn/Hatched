/// @description Interaction key
// You can write your code in this editor


if (global.playerControl == true && !(nearbyItem == noone || nearbyItem == undefined)) { 
	if (inventorySlot01 == noone || inventorySlot01 == undefined) {
		show_debug_message("picking up")
		alarm[0] = 2
	}
	else {
		show_debug_message("Inventory is full") 
	}
}
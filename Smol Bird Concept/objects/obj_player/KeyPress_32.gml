/// @description Interaction key
// You can write your code in this editor


if (global.playerControl == true && !(nearbyItem == noone || nearbyItem == undefined)) { 
	if (slot01 == noone || slot01 == undefined) {
		show_debug_message("picking up")
		slot01 = nearbyItem; 
		alarm[0] = 2;
	}
	else {
			if (slot02 == noone || slot02== undefined) {
			show_debug_message("picking up")
			slot02 = nearbyItem; 
			alarm[0] = 2;
		}
		else {
				if (slot03 == noone || slot03== undefined) {
				show_debug_message("picking up")
				slot03 = nearbyItem; 
				alarm[0] = 2;
			}
			else {
					if (slot04 == noone || slot04 == undefined) {
					show_debug_message("picking up")
					slot04 = nearbyItem; 
					alarm[0] = 2;
				}
				else {	
					show_debug_message("Inventory is full")
				}
			}
		}
	}
}

			
			
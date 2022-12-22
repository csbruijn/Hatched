/// @description Insert description here
// You can write your code in this editor


if (flyBuffet == true) {
	show_debug_message("Renee is satisfied with his buffet")
	
} 

// reset sprite when renee is done eating
if (sprite_index = spr_renee_eating) { 
	if (image_index >= image_number-1) {
		sprite_index = spr_renee_idle;
	}
}


// Check for collision with player
nearbyPC = collision_rectangle(x-lookRange, y-lookRange,
x+lookRange, y+lookRange,obj_player,false,true);

// if the PC is nearby
if nearbyPC { 
	
	// press E to open dialogue
	if (keyboard_check_pressed((ord("E"))) && !instance_exists(obj_textbox)) { 
		
		if (flyBuffet == false) {
			
			// take control away from player
			global.playerControl = false; 
			//Create
			var _tb = instance_create_layer(0, 0, "Instances", obj_textbox);
	
			// Add messages to textbox's list
			var _list = _tb.messages;
	
			for (var i=0; i<array_length(msg); i++) {
				var _arr = msg[i];
		
				ds_list_add(_list, _arr);
			}
		}

		else if  (flyBuffet == true) {
			
			// take control away from player
			global.playerControl = false; 
			
			//Create
			var _tb = instance_create_layer(0, 0, "Instances", obj_textbox);
	
			// Add messages to textbox's list
			var _list = _tb.messages;
	
			for (var i=0; i<array_length(msgNotHungry); i++) {
				var _arr = msgNotHungry[i];
		
				ds_list_add(_list, _arr);	
			}
		}
	}
}
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
	
	// press F or Enter to open dialogue
	if ((keyboard_check_pressed((ord("F"))) || keyboard_check_pressed(vk_enter)) && !instance_exists(obj_textbox)) { 
		
		if (flyBuffet == false) {
			
			// take control away from player
			global.playerControl = false; 
			//Create
			create_textbox(text_id);
		}

		else if  (flyBuffet == true) {
			text_id = "frog - end";
			// take control away from player
			global.playerControl = false; 
			
			//Create
			create_textbox(text_id);
		}
	}
}

if (!instance_exists(obj_textbox))
			{
				global.playerControl = true;
			}
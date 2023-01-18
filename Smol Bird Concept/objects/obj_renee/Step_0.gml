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
if (sprite_index = spr_renee_idle) {
	if (image_index = 2) {
		audio_play_sound(snd_frog,0,0);
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
			// Add messages to textbox's list
           if !instance_exists(obj_icon_frog) {
				instance_create_depth(1920, 0, y - 300 , obj_icon_frog)
		   }
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
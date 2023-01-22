/// @description 


// Check for collision with player
nearbyPC = collision_rectangle(x-lookRange, y-lookRange,
x+lookRange, y+lookRange,obj_player,false,true);

if nearbyPC
{ 
	
	// press F or Enter to open dialogue
	if ((keyboard_check_pressed((ord("F"))) || keyboard_check_pressed(vk_enter)) && !instance_exists(obj_textbox))
	{ 
			sprite_index = spr_beaver_still;
			// take control away from player
			global.playerControl = false; 
			//Create
			create_textbox(text_id);
			// Add messages to textbox's list
           /*if !instance_exists(obj_icon_frog) 
		   {
				instance_create_depth(1920, 0, y - 300 , obj_icon_frog)
		   }*/
		   
	}
}

if (!instance_exists(obj_textbox))
			{
				sprite_index = spr_beaver_idle;
				global.playerControl = true;
			}

// Inherit the parent event
event_inherited(); //depth
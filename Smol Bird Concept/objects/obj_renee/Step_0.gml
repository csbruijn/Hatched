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




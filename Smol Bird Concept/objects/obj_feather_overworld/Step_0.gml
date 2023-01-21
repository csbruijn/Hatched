/// @description Insert description here
// You can write your code in this editor
sprite_index = feather.sprite

if keyboard_check_pressed(ord("F")) { 
		if place_meeting(x,y,obj_player) {
			feather_add (feather);
			if feather = global.feather_list.frog {
				global.frogFeather = true;
			}
			if feather = global.feather_list.badger {
				global.badgerFeather = true;
			}
			if feather = global.feather_list.beaver {
				global.beaverFeather = true;
			}
			instance_destroy();
		}
	}








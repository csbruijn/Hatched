/// @description Insert description here
// You can write your code in this editor

if (!instance_exists(obj_cooldown)&& (global.playerControl = true) && (global.pause != true))
	{
		instance_create_depth(960, 998, 11111, obj_cooldown);
		myState = playerState.whistle;
		image_index = 0 ;
		global.playerControl = false; 
		//bird whistle
		if !(audio_is_playing(snd_sing)) 
		{
			audio_play_sound(snd_sing,1,false);
		}
	}
	





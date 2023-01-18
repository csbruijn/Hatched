/// @description Insert description here
// You can write your code in this editor

if (!instance_exists(obj_cooldown))
	{
		instance_create_depth(960, 998, 11111, obj_cooldown);
		
		//bird whistle
		if !(audio_is_playing(snd_sing)) 
		{
			audio_play_sound(snd_sing,1,false);
		}
	}
	





/// @description Insert description here
if (global.pause)
{
	keyUp = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
	keyDown = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));
	pauseOptionselected += (keyDown - keyUp);
	if (pauseOptionselected >= array_length(pauseOption)) pauseOptionselected = 0;
	if (pauseOptionselected < 0) pauseOptionselected = array_length(pauseOption) -1;
	
	keyActivate = keyboard_check_pressed(ord("F"));
	if (keyActivate)
	{
		switch (pauseOptionselected)
		{
			case 0: //Resume
			{
			global.pause = false;	
			with (all)
			{
		        image_speed = gamePausedImageSpeed;
			}
			}break;
		
			case 1: //Options
			{
			if (instance_exists(obj_controls))
			{
			instance_destroy(obj_controls)
			}

			else
			{
			instance_create_layer(1920 / 2, 1080 - 100, "Instances", obj_controls);
			}	
			}break;
		
			case 2: //quit
			{
				game_end();
			}break;
		}
	}
}

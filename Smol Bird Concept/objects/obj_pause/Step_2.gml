/// @description Pause game
if (keyboard_check_pressed(vk_escape))
{
	//toggle pause
	global.pause = !global.pause;
	
	if (global.pause = true)
	{
		with(all)
		{
			//stop all instances
			gamePausedImageSpeed = image_speed;
			image_speed = 0;
		}
	}
	else 
	{
		with(all)
		{
		image_speed = gamePausedImageSpeed;
		}
	}
}







/// @description
{
	//reduce alpha until fully transparent
	image_alpha = min(1.0, image_alpha + FADE_OUT_Delta);
	
	
	//TRIAL
	if (--countdown <= 0)
	{
	image_alpha = min(1.0, image_alpha + FADE_OUT_Delta);
	}
	
	if (image_alpha >= 1.0)
		//if image alpha is greater than or eq to 1, transition to fr2
		{
			room_goto(fr12);
		}
		
}









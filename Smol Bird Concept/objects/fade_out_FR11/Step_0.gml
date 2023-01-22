/// @description Insert description here
// You can write your code in this editor



// step event is completely differenet to parent obj

{
	if (--countdown <= 0)
		//take 'countdown' and subtract 1 from it. then save that as a new value
		// IF that is less than or equal to 0
		//then start reducing image alpha
	{
		
	//reduce alpha until fully transparent
	image_alpha = min(1.0, image_alpha + FADE_OUT_Delta);
	}
	
	if (image_alpha >= 1.0)
		//if image alpha is greater than or eq to 1, transition to next fr
		{
			room_goto(fr12);
		}
}











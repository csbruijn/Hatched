if (--countdown <=0)
{
	//reduce alpha until fully transparent
	image_alpha = min(1.0, image_alpha + 0.01);
}

if (image_alpha >=1)
{
	room_goto(MenuRoom);
}

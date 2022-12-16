//Change room after x seconds
time += 1;
if (time >= 120)
{
	//set targetroom
	var targetRoom = LogoRoom;
	if (room == LogoRoom) targetRoom = MenuRoom;
	
	//fade
	scr_fade(targetRoom, 30, c_black);
}



/// @description
if (!global.pause)
{
	// check keys for movement
	if (global.playerControl == true)
	{
		moveRight = keyboard_check(vk_right) || keyboard_check(ord("D"));
		moveUp = keyboard_check(vk_up) || keyboard_check(ord("W"));
		moveLeft = keyboard_check(vk_left)|| keyboard_check(ord("A"));
		moveDown = keyboard_check(vk_down) || keyboard_check(ord("S"));
	} 

	if (global.playerControl == false) 
	{
		moveRight = 0;
		moveUp = 0;
		moveLeft = 0;
		moveDown = 0;
	}


	// calculate movement
	vx = ((moveRight - moveLeft) * walkSpeed) ;
	vy = ((moveDown - moveUp) * walkSpeed) ;

	//if idle
	if (vx == 0 && vy == 0) 
	{
		// sprite = idle
		myState = playerState.idle
	}

	// If moving
	if (vx != 0 || vy !=0) {
		myState = playerState.walking; 
		if !collision_point(x+vx, y, obj_par_environment, true, true) {
			x += vx;
		}
		if !collision_point(x, y+vy, obj_par_environment, true, true){
			y += vy;
		}
		// Move audio listener with me
		audio_listener_set_position(0,x,y,0);
	}
	
	if (keyboard_check_pressed(vk_space))
	{    
   audio_play_sound(snd_sing,1,false);
	}

}

//change sprite based on the diretion
if (vy>0) {
	dir = 0;
}

if (vy<0) {
	dir = 1;
}
	
if (vx<0) {
	dir = 2;
}

if (vx>0) {
	dir = 3;
}

// Check for collision with NPCs
nearbyNPC = collision_rectangle(x-lookRange, y-lookRange,
x+lookRange, y+lookRange,obj_par_npc,false,true);


//When nearby NPC
if nearbyNPC {
	// debug msg
	show_debug_message("Player found NPC");
	// Pop up prompt
	if (npcPrompt == noone || npcPrompt == undefined) {
		npcPrompt = scr_showPrompt(nearbyNPC,nearbyNPC.x,nearbyNPC.y-300);
	}
}

if !nearbyNPC {
	//somthing else
	
	// Get rid of Prompt
	scr_dismissPrompt(npcPrompt,0);
}

nearbyItem = collision_rectangle(x-lookRange, y-lookRange,
x+lookRange, y+lookRange,obj_par_item,false,true);

if nearbyItem {
	if (itemPrompt == noone || npcPrompt == undefined) { 
		itemPrompt = scr_showPrompt(nearbyItem, nearbyItem.x, nearbyItem.y-100 );
	}
}

if !nearbyItem {
	scr_dismissPrompt(itemPrompt,1);
}

// Auto-choose Sprite based on state and direction
sprite_index = playerSpr[myState][dir];


//depthsorting
depth =-y;





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
		// change spire based on last direction
		switch dir 
		{
			case 0: sprite_index = spr_player_idle_down; break;
			case 1: sprite_index = spr_player_idle_up; break;
			case 2: sprite_index = spr_player_idle_left; break;
			case 3: sprite_index = spr_player_idle_right; break;
		}
	}


	// If moving
	if (vx != 0 || vy !=0) {
		if !collision_point(x+vx, y, obj_par_environment, true, true) 
		{
		x += vx;
		}
		if !collision_point(x, y+vy, obj_par_environment, true, true)
		{
		y += vy;
		}
	}
}

//change sprite based on the diretion
if (vy>0) {
	sprite_index = spr_player_move_down;
	dir = 0;
}

if (vy<0) {
	sprite_index = spr_player_move_up;
	dir = 1;
}
	
if (vx<0) {
	sprite_index = spr_player_move_left;
	dir = 2;
}

if (vx>0) {
	sprite_index = spr_player_move_right;
	dir = 3;
}

// Check for collision with NPCs
nearbyNPC = collision_rectangle(x-lookRange, y-lookRange,
x+lookRange, y+lookRange,obj_par_npc,false,true);

// Check for collision with Items
nearbyItem = collision_rectangle(x-lookRange, y-lookRange,
x+lookRange, y+lookRange,obj_par_item,false,true);

//When nearby NPC
if nearbyNPC {
	// debug msg
	show_debug_message("Player found NPC");
	// Pop up prompt
	if (npcPrompt == noone || npcPrompt == undefined) {
		npcPrompt = scr_showPrompt(nearbyNPC,nearbyNPC.x,nearbyNPC.y-170);
	}
}

if !nearbyNPC {
	//somthing else
	
	// Get rid of Prompt
	scr_dismissPrompt(npcPrompt,0);
}

// when nearby an item 
if nearbyItem {
	// DEBUG
	//show_debug_message("player found an item")
	// show prompt
	if (itemPrompt == noone || itemPrompt == undefined) {
		itemPrompt = scr_showPrompt(nearbyItem,nearbyItem.x,nearbyItem.y-50);
	}
	
}

// when not nearby item
if !nearbyItem {
	// dismiss prompt
	scr_dismissPrompt(itemPrompt,1);
}

//depthsorting
depth =-y;

//push swarm
scr_push();




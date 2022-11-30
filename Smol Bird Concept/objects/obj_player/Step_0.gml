/// @description

// check keys for movement
if (global.playerControl == true) {
	moveRight = keyboard_check(vk_right);
	moveUp = keyboard_check(vk_up);
	moveLeft = keyboard_check(vk_left);
	moveDown = keyboard_check(vk_down);
} 

if (global.playerControl == false) {
	moveRight = 0;
	moveUp = 0;
	moveLeft = 0;
	moveRight = 0;
}

// calculate movement
vx = ((moveRight - moveLeft) * walkSpeed) ;
vy = ((moveDown - moveUp) * walkSpeed) ;

//if idle
if (vx == 0 && vy == 0) {
	// change spire based on last direction
	switch dir {
		case 0: sprite_index = spr_player_idle_down; break;
		case 1: sprite_index = spr_player_idle_up; break;
		case 2: sprite_index = spr_player_idle_left; break;
		case 3: sprite_index = spr_player_idle_right; break;
	}
}


// If moving
if (vx != 0 || vy !=0) {
	if !collision_point(x+vx, y, obj_par_environment, true, true) {
	x += vx
	}
	if !collision_point(x, y+vy, obj_par_environment, true, true) {
	y += vy;
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


if nearbyNPC {
	// do something
	show_debug_message("Player found NPC")
}
if !nearbyNPC {
	//somthing else
	show_debug_message("player hasnt found NPC")
}


//depthsorting
depth =-y;
/// @description Player Character Creation

//Variables
walkSpeed = 14;
vx = 0;
vy = 0;
moveRight = 0;
moveUp = 0;
moveLeft = 0;
moveDown = 0;
dir = 3;
nearbyNPC = noone;
lookRange = 30;
npcPrompt = noone;
itemPrompt = noone;
myState = playerState.idle;
inventorySlot01 = noone;
inventorySlot02 = noone;
inventorySlot03 = noone;
inventorySlot04 = noone;

/*
case 0: sprite_index = spr_player_idle_down; break;
case 1: sprite_index = spr_player_idle_up; break;
case 2: sprite_index = spr_player_idle_left; break;
case 3: sprite_index = spr_player_idle_right; break;
*/

//player sprite array [myState] [dir]

//idle
playerSpr[playerState.idle] [0] = spr_player_idle_down;
playerSpr[playerState.idle] [1] = spr_player_idle_up;
playerSpr[playerState.idle] [2] = spr_player_idle_left;
playerSpr[playerState.idle] [3] = spr_player_idle_right;

// walk
playerSpr[playerState.walking] [0] = spr_player_move_down;
playerSpr[playerState.walking] [1] = spr_player_move_up;
playerSpr[playerState.walking] [2] = spr_player_move_left;
playerSpr[playerState.walking] [3] = spr_player_move_right;


// Depth sorting
depth = -y;


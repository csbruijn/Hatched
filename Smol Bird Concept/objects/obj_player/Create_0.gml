/// @description Player Character Creation

//Variables
walkSpeed = 16;
vx = 0;
vy = 0;
moveRight = 0;
moveUp = 0;
moveLeft = 0;
moveDown = 0;
dir = 3;
myState = playerState.idle
nearbyNPC = noone;
lookRange = 30;
npcPrompt = noone;
itemPrompt = noone;
inventorySlot01 = noone;
inventorySlot02 = noone;
inventorySlot03 = noone;
inventorySlot04 = noone;

//player sprite array [myState] [dir]
// idle 
playerSpr[playerState.idle][0] = spr_player_idle_down;
playerSpr[playerState.idle][1] = spr_player_idle_up;
playerSpr[playerState.idle][2] = spr_player_idle_left;
playerSpr[playerState.idle][3] = spr_player_idle_right;

// Walking
playerSpr[playerState.walking][0] = spr_player_move_down;
playerSpr[playerState.walking][1] = spr_player_move_up;
playerSpr[playerState.walking][2] = spr_player_move_left;
playerSpr[playerState.walking][3] = spr_player_move_right;


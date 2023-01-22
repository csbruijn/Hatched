/// @description Insert description here
// You can write your code in this editor


if (instance_exists(obj_player)) && (position_meeting(obj_player.x, obj_player.y,id)) {
    global.targetRoom = targetRoom; 
    global.targetX = targetX;
    global.targetY = targetY; 
    global.targetDirection = obj_player.direction;
	if (room = MainRoom) {
		audio_pause_sound(snd_flies_A);
		audio_pause_sound(snd_flies_B);
		audio_pause_sound(snd_flies_C);
		audio_pause_sound(snd_flies_D);
	}
	instance_destroy(obj_inventory_main);
   if !playermoving{
   room_goto(targetRoom);
   playermoving =true;
   }
}






/// @description Insert description here
// You can write your code in this editor
// variables 
lookRange= 240;
dinnerTime = false; 
myEmitter = 0;

originX = obj_swarm.x;
originY = obj_swarm.y; 

// create emitter

if (useSound != noone) {
	if !audio_is_playing(useSound) {
		myEmitter = audio_emitter_create();
		audio_emitter_position(myEmitter, x, y ,0);
		audio_falloff_set_model(audio_falloff_exponent_distance);
		audio_emitter_falloff(myEmitter, fallStart, maxDist, 2);
		audio_play_sound_on(myEmitter,snd_flies_A,1,1);
		audio_play_sound_on(myEmitter,snd_flies_B,1,1);
		audio_play_sound_on(myEmitter,snd_flies_C,1,1);
		audio_play_sound_on(myEmitter,snd_flies_D,1,1);
	}
}


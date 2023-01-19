
if (useSound != noone) {
	if !audio_is_playing(useSound) {
		myEmitter = audio_emitter_create();
		audio_emitter_position(myEmitter, x, y ,0);
		audio_falloff_set_model(audio_falloff_exponent_distance);
		audio_emitter_falloff(myEmitter, fallStart, maxDist, 2);
		alarm [5] = 60
	}
}

// variables 
text_id = "frog";
flyBuffet = false;
nearbyPC = noone; 
lookRange = 180; 
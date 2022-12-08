//disable alpha blending (we just want RGB from screen)
gpu_set_blendenable(false);

if(pause)//draw frozen image to screen while paused
{
	surface_set_target(application_surface);
	if(surface_exists(pauseSurf))draw_surface(pauseSurf, 0 ,0);
	else //restore from buffer if we lost the surface
	{
		pauseSurf = surface_create(resW,resH);
		buffer_set_surface(pauseSurfBuffer,pauseSurf,0);
	}
	surface_reset_target();
}

if (keyboard_check_pressed(vk_escape)) //Toggle pause
 {
	 if(!pause)//pause
	 {
		 pause =true;
		 //deactivate anything other than this instance
		 instance_deactivate_all(true);
		 draw_set_color(c_black);
    draw_set_alpha(0.5);
    draw_rectangle(0,0,1920,1080,0);
		 //NOTE TO SELF
		 //IF YOU NEED TO STOP ANIMATED SPRITES YOU NEED TO DO THAT SEPARATELY
		 
		 //capture game moment (won't capture draw GUI contents)
	     pauseSurf = surface_create(resW,resH);
		 surface_set_target(pauseSurf);
		 draw_surface(application_surface, 0, 0);
		 surface_reset_target();
		 
		 //back up  this surface to a buffer in case we lose it
		 if(buffer_exists(pauseSurfBuffer)) buffer_delete(pauseSurfBuffer);
		 pauseSurfBuffer = buffer_create(resW*resH*4, buffer_fixed, 1);
		 buffer_get_surface(pauseSurfBuffer, pauseSurf, 0);
	 }
	 else //unpause
	 {
		 pause = false;
		 instance_activate_all();
		 if (surface_exists(pauseSurf))surface_free(pauseSurf);
		 if (buffer_exists(pauseSurfBuffer))buffer_delete(pauseSurfBuffer);
	 }
 }
 
 //enable alpha blending again
 gpu_set_blendenable(true);
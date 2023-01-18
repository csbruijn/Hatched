/// @description 

draw_self();
draw_set_alpha(1);

//Ability Cooldown
image_alpha -= 0.01;
if (image_alpha = 0) 
	{
		instance_destroy(obj_cooldown);
	}


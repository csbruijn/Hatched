/// @description Insert description here
// You can write your code in this editor


draw_self();
draw_set_alpha(1);

//Ability Cooldown
image_alpha -= 0.005;
if (image_alpha = 0) 
    {
        instance_destroy(obj_cooldown);
    }






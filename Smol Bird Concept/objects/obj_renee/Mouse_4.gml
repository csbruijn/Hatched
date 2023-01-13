/// @description make renee jump 

global.playerControl = false; 
image_index = 0;
sprite_index = spr_renee_jump;
instance_destroy(obj_frog_block);
alarm [1] = 100;
path_start(path_jump,6,0,0);


//move_towards_point(250,250,10)

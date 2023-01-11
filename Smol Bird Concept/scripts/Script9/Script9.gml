// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Script9(){
iii = point_direction(x,y,obj_player.x,obj_player.y); 
	path = path_add();
	mp_linear_path_object(path,iii.x, iii.y, 12 ,obj_par_environment)
}
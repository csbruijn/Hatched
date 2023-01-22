/// @description Insert description here
// You can write your code in this editor

if (collision_rectangle(x+100,y+100,x-100,y-100,obj_player,0,0)){
	if keyboard_check_pressed(ord("F")) { 
		item_add(item);
	}
}

/*

if keyboard_check_pressed(ord("F")) {
	item_add(item)
}








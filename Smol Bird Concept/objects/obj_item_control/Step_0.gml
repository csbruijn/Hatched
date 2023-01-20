// https://www.youtube.com/watch?v=fa26B54JDDk

spawn_items ();

// get selected item
selected_item = -1;
for (var i = 0; i < array_length(inv); i++) {
	var _xx = camera_get_view_x(view_camera[0])+Xbegin + (i mod rowLength)* (sep+100);
	var _yy = camera_get_view_y(view_camera[0])+Ybegin + (i div rowLength)* (sep+100 -6);
	
	if mouse_x > _xx  && mouse_x < _xx +100 && mouse_y > _yy && mouse_y < _yy + 100 
	{
	selected_item = i; 
	//show_debug_message("hovering item");
	}
}

if selected_item != -1 {
	// use item
	if mouse_check_button_pressed(mb_left) {
		inv[selected_item].effect();
	}
}

global.inventorySpace = array_length(inv);
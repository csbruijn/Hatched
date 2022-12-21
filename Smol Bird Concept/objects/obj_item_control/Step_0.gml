// https://www.youtube.com/watch?v=fa26B54JDDk

// get selected item
selected_item = -1;
for (var i = 0; i < array_length(inv); i++) {
	var _xx = camera_get_view_x(view_camera[0])+screen_bord ;
	var _yy = camera_get_view_y(view_camera[0])+screen_bord + sep*i ;
	
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
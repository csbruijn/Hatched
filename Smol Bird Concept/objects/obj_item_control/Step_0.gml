// get selected item
selected_item = -1;
for (var i = 0; i < array_length(inv); i++) {
	var _xx = screen_bord ;
	var _yy = screen_bord + sep*i ;
	
	if mouse_x > _xx && mouse_x < _xx + 50 &&  mouse_y > _yy && mouse_y < _yy + 50 
	{
	selected_item = i; 
	//show_debug_message("hovering item");
	}
}


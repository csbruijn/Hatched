// https://www.youtube.com/watch?v=fa26B54JDDk

if instance_exists(obj_inventory_main){
// switch tabs 
switch tab {
	case 0: 
	
	case 1:
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
	case 2: 
		selected_feather = -1;
	for (var i = 0; i < array_length(feathers); i++) {
		var _xx = camera_get_view_x(view_camera[0])+Xbegin + (i mod rowLength)* (sep+100);
		var _yy = camera_get_view_y(view_camera[0])+Ybegin + (i div rowLength)* (sep+100 -6);
	
		if mouse_x > _xx  && mouse_x < _xx +100 && mouse_y > _yy && mouse_y < _yy + 100 
		{
		selected_feather = i; 
		//show_debug_message("hovering item");
		}
	}

	if selected_feather != -1 {
		// use item
		if mouse_check_button_pressed(mb_left) {
			feathers[selected_feather].effect();
		}
	}
	case 3:
}
}
global.inventorySpace = array_length(inv);
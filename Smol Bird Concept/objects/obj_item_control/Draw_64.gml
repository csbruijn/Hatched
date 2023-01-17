/// @description inventory GUI
//https://www.youtube.com/watch?v=fa26B54JDDk

//font
draw_set_font(Text_inventory);


if instance_exists(obj_inventory_main){
	for (var i = 0; i < array_length(inv); i++) {
		
		var _sepX = sep + 100 ; 
		var _sepY = sep + 100 - 6;
		var _xx = Xbegin + (i mod rowLength)*_sepX;
		var _yy = Ybegin + (i div rowLength)*_sepY;
		var _col = c_white;
	
		//icon
		
		draw_sprite(inv[i].icon, 0, _xx , _yy);
		
	
		
	
		// get colour
		draw_set_color(_col);
	
		// selected item description 
		if selected_item == i {
			draw_text_ext(333, 526, inv[i].description, 40, 222 );
			draw_set_font(Text_item_name)
			draw_text(350, 455, inv[i].itemName);
			draw_sprite_stretched(inv[i].icon,0,358,265,150,150)
		} 
	}
}





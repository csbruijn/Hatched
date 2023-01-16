/// @description inventory GUI
//https://www.youtube.com/watch?v=fa26B54JDDk

//font
draw_set_font(Text_inventory);

for (var i = 0; i < array_length(inv); i++) {
	var _xx = Xbegin ;
	var _yy = Ybegin ;
	var _sep = sep ; 
	var _col = c_white;
	
	//icon
	draw_sprite(inv[i].icon, 0, _xx +(100 + _sep )* i, _yy);
	
	// get selected colour
	if selected_item == i { _col = c_yellow; } ;
	draw_set_color(_col);
	
	//name
	
	//description
	
	if selected_item == i {
		
		draw_text (350, 455, inv[i].itemName);
		draw_text_ext(333, 526, inv[i].description, 40, 222 ); 
	}
	
	// reset colour to white
	draw_set_color (c_white); 
}





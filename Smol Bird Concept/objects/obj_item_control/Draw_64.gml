/// @description Insert description here
// You can write your code in this editor

for (var i = 0; i < array_length(inv); i++) {
	var _xx = screen_bord ;
	var _yy = screen_bord ;
	var _sep = sep ; 
	var _col = c_white;
	
	//icon
	draw_sprite(inv[i].icon, 0, _xx, _yy + _sep * i);
	
	// get selected colour
	if selected_item == i { _col = c_yellow; } ;
	draw_set_color(_col);
	
	//name
	draw_text (_xx + 100, _yy + _sep *i , inv[i].itemName);
	
	//description
	
	if selected_item == i {
		draw_text_ext(_xx, _yy + _sep * array_length(inv), inv[i].description, 12, 800 ); 
	}
	
	// reset colour to white
	draw_set_color (c_white); 
}





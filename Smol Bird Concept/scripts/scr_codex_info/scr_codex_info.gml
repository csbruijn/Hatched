// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function codex_info(_NPCicon, _featherIcon,_featherCollectedYorN,_hasmetVariable, _NPCname, _NPCtext,_textAddon){
	
	draw_set_color(c_white);
	draw_set_font(Text_item_name);
	draw_set_halign(fa_middle);
	if _hasmetVariable {
		draw_text(1326,345,_NPCname)
		draw_sprite(_NPCicon,0,735,358);
	}
	else {
		draw_text(1326,345,"???")
		draw_sprite(spr_unknown,0,735,358);
	}
	draw_set_font(Text_inventory);
	draw_set_halign(fa_left);
	if _hasmetVariable {
		if(_featherCollectedYorN){ 
			draw_text_ext(1150,450,_NPCtext+_textAddon, 40, 350)
			draw_sprite(_featherIcon,0, 766,660)
	}
	else { 
		draw_text_ext(1150,450,_NPCtext, 40, 350)
		draw_sprite(spr_unknown_feather,0, 766,660)
	}
	}
	else { 
		draw_text_ext(1150,450, "???", 40, 350)
		}

}
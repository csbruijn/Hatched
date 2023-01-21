/// @description inventory GUI
//https://www.youtube.com/watch?v=fa26B54JDDk

//font
draw_set_font(Text_inventory);

if instance_exists(obj_inventory_main){	
	if (tab=0) {
		 // if global.hasMetFrog = true {
		draw_set_font(Text_item_name);
		draw_set_halign(fa_middle);
		draw_set_color(c_white);
		
		if global.hasMetFrog = true {
		draw_text(430, 247, "Renee");
		}
		else {
			draw_text(430, 247, "???");
		}		
		if global.hasMetBadger = true {
		draw_text(430, 357, "Roger");
		}
		else {
			draw_text(430, 357, "???");
		}
		if global.hasMetBeaver =true {
		draw_text(430, 457, "Barnold");
		}
		else {
			draw_text(430, 457, "???");
		}
		
	if ((mouse_x > camera_get_view_x(view_camera[0]) + 328) && (mouse_x < camera_get_view_x(view_camera[0]) +568)) {
		if ((mouse_y > camera_get_view_y(view_camera[0]) + 228) && (mouse_y < camera_get_view_y(view_camera[0]) +300)) {
			if (global.hasMetFrog = true && global.frogFeather = true) {
				codex_info(spr_frog_talk,spr_feather_frog_collected, "Renee the Frog", "Renee the frog is a calm and collected australian bullfrog");
			}
			if (global.hasMetFrog = true && global.frogFeather = false) {
				codex_info(spr_frog_talk,spr_unknown_feather, "Renee the Frog", "Renee the frog is a calm and collected australian bullfrog");
			}
			if (global.hasMetFrog != true && global.frogFeather != true) {
			codex_info(spr_unknown, spr_unknown_feather, "???", "???") } 
		}
		if ((mouse_y > camera_get_view_y(view_camera[0]) + 345) && (mouse_y < camera_get_view_y(view_camera[0]) +400)) {
			if (global.hasMetBadger = true && global.badgerFeather = true) {
				codex_info(spr_badger_talk, spr_feather_badger_collected,"Roger the Badger", "Roger is plain landlord schum tbh blegh");
			}
			if (global.hasMetBadger = true && global.badgerFeather = false) {
				codex_info(spr_badger_talk,spr_unknown_feather, "Roger the Badger", "Roger is plain landlord schum tbh blegh");
			}
			if (global.hasMetBadger != true && global.badgerFeather != true) {
				codex_info(spr_unknown, spr_unknown_feather, "???", "???") } 
		}
		
		if ((mouse_y > camera_get_view_y(view_camera[0]) + 450) && (mouse_y < camera_get_view_y(view_camera[0]) +510)) {
			if (global.hasMetBeaver = true && global.beaverFeather = true) {	
				codex_info(spr_beaver_talk, spr_feather_beaver_collected, "Barnold the Beaver", "Poor Barnold the Beaver is always busy with building houses")
			}
			if (global.hasMetBeaver = true && global.beaverFeather = false) {	
				codex_info(spr_beaver_talk, spr_unknown_feather, "Barnold the Beaver", "Poor Barnold the Beaver is always busy with building houses")
			}
			if (global.hasMetBeaver != true && global.beaverFeather != true) {
				codex_info(spr_unknown, spr_unknown_feather, "???", "???") } 
		}
	}
}
	// draw items and text
	if (tab =1) { // why does switch statement make feathertab always appear
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
				draw_set_halign(fa_left);
				draw_text_ext(350, 540, inv[i].description, 40, 200 );
				draw_set_font(Text_item_name);
				draw_set_halign(fa_middle);
				draw_text(444, 455, inv[i].itemName);
				draw_sprite_stretched(inv[i].icon,0,358,265,175,175);
			} 
		}
	}

	if (tab =2) { 
		for (var i = 0; i < array_length(feathers); i++) {
		
			var _sepX = sep + 100 ; 
			var _sepY = sep + 100 - 6;
			var _xx = Xbegin + (i mod rowLength)*_sepX;
			var _yy = Ybegin + (i div rowLength)*_sepY;
			var _col = c_white;
	
			//icon
		
			draw_sprite(feathers[i].icon, 0, _xx , _yy);
		
	
		
	
			// get colour
			draw_set_color(_col);
	
			// selected feather description 
			if selected_feather == i {
				draw_set_halign(fa_left);
				draw_text_ext(350, 540, feathers[i].description, 40, 200 );
				draw_set_font(Text_item_name);
				draw_set_halign(fa_middle);
				draw_text(444, 455, feathers[i].itemName);
				draw_sprite_stretched(feathers[i].icon,0,358,265,175,175); // why does  H&W value 175 overstrech it? 
			} 
		}
	}
}


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
		
		
		
	{	// draw NPC names
		draw_text(430, 247, "Mom");
				
		if global.hasMetFrog = true {
		draw_text(430, 357, "Renee");
		}
		else {
			draw_text(430, 357, "???");
		}
		if global.hasMetBadger =true {
		draw_text(430, 457, "Roger");
		}
		else {
			draw_text(430, 457, "???");
		}
		
		if global.hasMetBeaver =true {
		draw_text(430, 557, "Barnold");
		}
		else {
			draw_text(430, 557, "???");
		}
	}
	
	// show codex info when hovering
	if ((mouse_x > camera_get_view_x(view_camera[0]) + 328) && (mouse_x < camera_get_view_x(view_camera[0]) +568)) {
			if ((mouse_y > camera_get_view_y(view_camera[0]) + 228) && (mouse_y < camera_get_view_y(view_camera[0]) +300)) {
				codex_info(spr_mom_icon, spr_feather_mom_collected,global.momFeather,global.momFeather,
				"Mom",
				"The first person you ever saw in your life. Loves you unconditionally.",
				" ." )
			}
	
		if ((mouse_y > camera_get_view_y(view_camera[0]) + 345) && (mouse_y < camera_get_view_y(view_camera[0]) +400)) {
				codex_info(spr_frog_talk,
				spr_feather_frog_collected,
				global.frogFeather,
				global.hasMetFrog,
				"Renee the Frog",
				"Renee the Frog is a calm and collected Australian Bullfrog. Loves eating flies but doesn't like the green ones.",
				"Renee the Frog is a calm and collected Australian Bullfrog. Loves eating flies but doesn't like the green ones. Now that you helped him, his croaks of joy will echo throughout eternity."
				);
			}
		if ((mouse_y > camera_get_view_y(view_camera[0]) + 450) && (mouse_y < camera_get_view_y(view_camera[0]) +510)) {	
				codex_info(spr_badger_talk,
				spr_feather_badger_collected,
				global.badgerFeather,
				global.hasMetBadger,
				"Roger the Badger",
				"Roger the Badger is a badger. When it comes to confrontation, he is also a dodger.",
				"Roger the Badger is a badger. When it comes to confrontation, he is also a dodger."
				);
			}	
		if ((mouse_y > camera_get_view_y(view_camera[0]) + 550) && (mouse_y < camera_get_view_y(view_camera[0]) +610)) {	
				codex_info(spr_beaver_talk,
				spr_feather_beaver_collected,
				global.beaverFeather,
				global.hasMetBeaver,
				"Barnold the Beaver",
				"Barnold is a an eager Beaver who is always busy building dams and houses." ,
				"Barnold is a an eager Beaver who is always busy building dams and houses. Now that you've helped him, you could say that he does give a dam!"
				);
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
}

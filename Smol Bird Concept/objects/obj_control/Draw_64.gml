/// @description Insert description here
// You can write your code in this editor




{ // draw NPC progression Icons
	if global.hasMetFrog {
		draw_sprite(spr_icon_frog,1,5,5);
	}
	if !global.hasMetBeaver && global.heardOfBeaver{
			draw_sprite(spr_icon_beaver_black,1,5,155);
	}

	if global.hasMetBeaver {
		draw_sprite (spr_icon_beaver,1,5,155);
	}


	if global.hasMetBadger {
		draw_sprite(spr_icon_badger,1,5,305);
	}
}



/// @description 
// https://www.youtube.com/watch?v=fa26B54JDDk

depth = -9999;

//font


// item constructer
function create_item(_name, _descr, _spr, _worldSpr, _effect) constructor {
	itemName = _name;
	description = _descr;
	icon = _spr;
	sprite = _worldSpr
	effect = _effect;
	
}

//create the items
global.item_list = {
	
	twig : new create_item( 
		"Twig", 
		"It's a twig found on the floor. Great for construction!",
		spr_item_twig,
		spr_twig,
	
		// whatever the item does
		function () { 
			// get rid of item
			array_delete(inv, selected_item, 1);
			instance_create_depth(x,y,0,obj_item_overworld)
			show_debug_message("twig dropped");
		}
		
	),
	
	shack : new create_item(
		"shack",
		"it's a shitty twig shack. No. It is MY shitty twig shack.", 
		spr_item_shack,
		spr_nest,
		
			// whatever the item does
		function () { 
			instance_create_depth(obj_player.x,obj_player.y, 0, obj_shitty_twig_shack)
			// get rid of item
			array_delete(inv, selected_item, 1);
			show_debug_message("shack placed");
		}
	),
}

//create inventory
inv = array_create(0); 

selected_item= -1; 


// for drawing and mouse position
sep = 74; 
Xbegin = 731;
Ybegin = 373; 













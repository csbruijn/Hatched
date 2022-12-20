/// @description 
// https://www.youtube.com/watch?v=fa26B54JDDk

depth = -9999;

//font


// item constructer
function create_item(_name, _descr, _spr) constructor {
	itemName = _name;
	description = _descr;
	icon = _spr;
}

//create the items
global.item_list = {
	
	twig : new create_item( 
		"Twig", 
		"It's a twig found on the floor. Great for construction!",
		spr_item_twig
	),
	
	shack : new create_item(
		"shack",
		"it's a shitty twig shack. No. It is MY shitty twig shack.", 
		spr_item_shack,
	),
}

//create inventory
inv = array_create(0); 

selected_item= -1; 


// for drawing and mouse position
sep = 100; 
screen_bord = 16; 













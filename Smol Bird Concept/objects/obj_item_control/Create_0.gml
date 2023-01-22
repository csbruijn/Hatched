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
		"It's a twig you found on the ground. Great for construction!",
		spr_item_twig,
		spr_twig,
	
		// whatever the item does
		function () { 
			// get rid of item
			array_delete(inv, selected_item, 1);
			instance_create_depth(obj_player.x,obj_player.y,0,obj_item_overworld)
			with (obj_item_overworld){
				item = global.item_list.twig;
			}
			show_debug_message("twig dropped");
		}
		
	),
	grass : new create_item(
		"Grass",
		"The same kind of grass your mother uses, the very best!", 
		spr_item_grass,
		spr_item_grass,
		
			// whatever the item does
		function () { 
			// get rid of item
			array_delete(inv, selected_item, 1);
			instance_create_depth(obj_player.x,obj_player.y,0,obj_item_overworld)
			with (obj_item_overworld){
				item = global.item_list.grass;
			}
			show_debug_message("grass dropped");
		}
	),
	
	mud : new create_item(
		"Clump of Mud",
		"Barnold said that it was a great building material but it seems to be the smelliest thing in the world.", 
		spr_item_mud,
		spr_item_mud,
		
			// whatever the item does
		function () { 
			// get rid of item
			array_delete(inv, selected_item, 1);
			instance_create_depth(obj_player.x,obj_player.y,0,obj_item_overworld)
			with (obj_item_overworld){
				item = global.item_list.mud;
			}
			show_debug_message("shack placed");
		}
	),
}

global.feather_list = {
	mom: new create_item(
	"Mom's Feather",
	"A beatiful feather that once belonged to your mom.",
	spr_feather_mom_icon,
	spr_feather_mom,
	function () {
		//whatever you want 
	}
	),
	
	frog: new create_item(
	"Renee's Gift",
	"A feather gifted to you by Renee the Frog for your help.",
	spr_feather_frog_icon,
	spr_feather_frog,
	function () {
		//whatever you want 
	}
	),
	
	beaver: new create_item(
	"Barnold's Gift",
	"A feather gifted to you by Barnold Beaver for your help.",
	spr_feather_beaver_icon,
	spr_feather_beaver,
	function () {
		//whatever you want 
	}
	),
	
	badger: new create_item(
	"Roger's Gift",
	"A feather gifted to you by Roger the Badger for your help.",
	spr_feather_badger_icon,
	spr_feather_badger,
	function () {
		//whatever you want 
	}
	),
	
}
	
//create feather inventory
feathers = array_create(0);
selected_feather = -1; 

//create inventory
inv = array_create(0); 

selected_item= -1; 


// for drawing and mouse position
sep = 70; 
Xbegin = 731;
Ybegin = 373; 
rowLength = 5;
tab = 1; 

global.inventorySpace = array_length(inv);







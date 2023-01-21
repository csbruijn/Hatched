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
			instance_create_depth(obj_player.x,obj_player.y,0,obj_item_overworld)
			with (obj_item_overworld){
				item = global.item_list.twig;
			}
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

global.feather_list = {
	mom: new create_item(
	"mom's feather",
	"it is a beatiful feather that once belonged to your mom",
	spr_feather_mom_icon,
	spr_feather_mom,
	function () {
		//whatever you want 
	}
	),
	
	frog: new create_item(
	"renee's gift",
	"A feather gifted to you by renee for your help",
	spr_feather_frog_icon,
	spr_feather_frog,
	function () {
		//whatever you want 
	}
	),
	
	beaver: new create_item(
	"barnold's gift",
	"A feather gifted to you by barnold for your help",
	spr_feather_beaver_icon,
	spr_feather_beaver,
	function () {
		//whatever you want 
	}
	),
	
	badger: new create_item(
	"badger's gift",
	"A feather gifted to you by badger for your help",
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







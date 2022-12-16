// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_fade(){
//@arg room
//@arg duration
//@arg color

//args
var _room = argument[0];
var _dur = argument[1];
var _color = argument[2];

//create
var _inst = instance_create_depth(0, 0, 0, obj_fade);

//set properties
with (_inst)
{
	targetroom = _room;
	duration = _dur;
	color = _color;
}
}
/// @description Insert description here
if (!instance_exists(obj_textbox)) {
	//Create
	var _tb = instance_create_layer(0, 0, "Instances", obj_textbox);
	
	// Add messages to textbox's list
	var _list = _tb.messages;
	
	for (var i=0; i<array_length(msg); i++) {
		var _arr = msg[i];
		
		ds_list_add(_list, _arr);
	}
}
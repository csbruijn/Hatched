/// @description Insert description here
// You can write your code in this editor
var _arr = messages [| messageID];

var _text = _arr[MSG.TEXT];

// Get message string
messageText = string_copy(_text, 1, messageChar);

// String not fully drawn
if (messageChar <= string_length(_text)) messageChar += messageSpeed;

// String fully drawn 
else if (keyboard_check_pressed(vk_space)) {
	// Go to next message
	if (messageID < ds_list_size(messages) - 1) {
		messageID++;
		messageChar = 0;
	}
	// Close textbox
	else {
		// give control back to the player
		global.playerControl = true;
		instance_destroy();
	}
}
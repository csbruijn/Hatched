/// @description Insert description here
// You can write your code in this editor


// take me to the testroom
if room=LogoRoom {
	if keyboard_check_pressed(vk_tab) {
		room_goto(TestRoom);
	}


	if keyboard_check_pressed(vk_space) {
		room_goto(BadgerRoom);
	}
}
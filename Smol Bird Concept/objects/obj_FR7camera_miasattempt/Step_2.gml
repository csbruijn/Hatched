
// get current camera position
var camW = camera_get_view_width(camera);
var camH = camera_get_view_height(camera);

//set target camera size
	var targetX = room_width
	var targetY = room_height

//Smoothly move camera from current position to target position
	// the 'lerp' function will move the Cam X towards targetX by this percentage
	//which is 0.1 (10%), therefore the camera will move closer to the target by 10%
camW = lerp(camW, targetX, cam_SMOOTH);
camH = lerp(camH, targetY, cam_SMOOTH);

//zooming
//TESTING A THINGY!! TO SEE IF WORK
var wheel = mouse_wheel_down() - mouse_wheel_up();

if (wheel != 0) {
	wheel *= 0.1;
	
	//add to size 
	//the new variables will store how many pixels will be added to the camera by multiplying
	//the wheel value w the size
	var addW = camW * wheel;
	var addH = camH * wheel;
	
	camW += addW;
	camH += addH;

}

//apply camera position
camera_set_view_size(camera, camW, camH);

display_set_gui_size(camW, camH) //Draw GUI to be the size of the camera





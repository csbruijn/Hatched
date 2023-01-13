//resolution
camW = 960
camH = 540
cam_SCALE = 1

cam_SMOOTH = 0.005

//enable views
view_enabled = true;
view_visible[0] = true;

//create camera
camera = camera_create_view(0,0,camW,camH);

view_set_camera(0, camera);

display_set_gui_size(camW, camH) //Draw GUI to be the size of the camera




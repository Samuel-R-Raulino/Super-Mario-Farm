var cam_x = camera_get_view_x(view_camera[0]);
var cam_y = camera_get_view_y(view_camera[0]);

x = cam_x+Main.x_selector*16
y = cam_y+Main.y_selector*16

if(place_meeting(x,y,obj_animal)){
	col = true	
}else{
	col = false
}
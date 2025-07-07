if(making>0 and object!=noone){
	var view_x = camera_get_view_x(view_camera[0]);
	var view_y = camera_get_view_y(view_camera[0]);

	var scale_h = 2.25;
	var scale_v = 2.3;

	var screen_x = (x - view_x) * scale_h;
	var screen_y = (y - view_y) * scale_v;
	var width = (making/50)*19 * scale_h;
	var height = 8 * scale_v;

	draw_set_color(c_red);
	draw_rectangle(screen_x, screen_y, screen_x + width, screen_y + height, false);
}
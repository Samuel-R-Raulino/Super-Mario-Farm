var view_x = camera_get_view_x(view_camera[0]);
var view_y = camera_get_view_y(view_camera[0]);

var screen_x = x - view_x;
var screen_y = y - view_y;

draw_set_color(c_red);
draw_rectangle(screen_x, screen_y, screen_x + 64, screen_y + 32, false);

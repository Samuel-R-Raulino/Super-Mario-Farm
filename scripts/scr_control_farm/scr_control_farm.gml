function control_farm() {
    if (player_stop) {
		
        x_selector += -keyboard_check_pressed(vk_left) + keyboard_check_pressed(vk_right);
        y_selector += -keyboard_check_pressed(vk_up) + keyboard_check_pressed(vk_down);

        var cam_x = camera_get_view_x(view_camera[0]);
        var cam_y = camera_get_view_y(view_camera[0]);

        var x_world = cam_x + x_selector * 16;
        var y_world = cam_y + y_selector * 16;

        if (keyboard_check(vk_control)) {
            instance_create_layer(x_world, y_world, layer, obj_selected);
        }
		for(var i =0; i < 10;i++){
			if(keyboard_lastchar == string(i+1)){
				num_clicado = i
			}
		}
    } else {
        x_selector = 0;
        y_selector = 0;
    }
}

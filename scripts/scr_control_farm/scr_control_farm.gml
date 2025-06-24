function control_farm() {
    if (player_stop) {
        // Movimenta o seletor por células de 16px
        x_selector += -keyboard_check_pressed(vk_left) + keyboard_check_pressed(vk_right);
        y_selector += -keyboard_check_pressed(vk_up) + keyboard_check_pressed(vk_down);

        // Calcula posição no mundo (se estiver usando câmera)
        var cam_x = camera_get_view_x(view_camera[0]);
        var cam_y = camera_get_view_y(view_camera[0]);

        var x_world = cam_x + x_selector * 16;
        var y_world = cam_y + y_selector * 16;

        if (keyboard_check(vk_control)) {
            instance_create_layer(x_world, y_world, layer, obj_selected);
        }
		if(keyboard_lastchar == "1" || keyboard_lastchar == "2"){
			num_clicado = real(keyboard_lastchar) -1
		}
    } else {
        x_selector = 0;
        y_selector = 0;
    }
}

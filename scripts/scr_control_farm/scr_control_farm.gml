function control_farm() {
    if (player_stop) {
		
        x_selector += -keyboard_check_pressed(vk_left) + keyboard_check_pressed(vk_right);
        y_selector += -keyboard_check_pressed(vk_up) + keyboard_check_pressed(vk_down);

        var cam_x = camera_get_view_x(view_camera[0]);
        var cam_y = camera_get_view_y(view_camera[0]);

        var x_world = cam_x + x_selector * 16;
        var y_world = cam_y + y_selector * 16;
		
		var _obj_proximo = instance_nearest(x,y,obj_selected)
		var _entidade_proxima = instance_nearest(x,y,obj_animal)
		var _slot = ds_grid_get(global.inventory,obj_mario_farm.inv.slot_use[0],obj_mario_farm.inv.slot_use[1])
		if(obj_selected!=noone){
	        if (keyboard_check_pressed(vk_control) and obj_selector.col = false and obj_selected !=noone) {
				if(_obj_proximo!=noone){
					if(_obj_proximo.x = x_world and _obj_proximo.y = y_world ){
						instance_destroy(_obj_proximo)
					}else{
						if( (_entidade_proxima.x != x_world and _entidade_proxima.y != y_world)){
							instance_create_layer(x_world, y_world, layer, obj_selected);
							_slot[4]-=1
							ds_grid_set(global.inventory,obj_mario_farm.inv.slot_use[0],obj_mario_farm.inv.slot_use[1],_slot)
						}
					}
				}else{
					instance_create_layer(x_world, y_world, layer, obj_selected);
					_slot[4]-=1
					ds_grid_set(global.inventory,obj_mario_farm.inv.slot_use[0],obj_mario_farm.inv.slot_use[1],_slot)
				}
	        } 
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

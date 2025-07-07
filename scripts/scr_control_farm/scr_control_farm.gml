function control_farm() {
    if (player_stop) {
		if(keyboard_check_pressed(vk_left or vk_right or vk_up or vk_down)){
			audio_play_sound(audio_select_effect,0,0)
		}
        x_selector += -keyboard_check_pressed(vk_left) + keyboard_check_pressed(vk_right);
        y_selector += -keyboard_check_pressed(vk_up) + keyboard_check_pressed(vk_down);

        var cam_x = camera_get_view_x(view_camera[0]);
        var cam_y = camera_get_view_y(view_camera[0]);

        var x_world = cam_x + x_selector * 16;
        var y_world = cam_y + y_selector * 16;
		
		
		var _entidade_proxima = instance_nearest(x,y,obj_animal)
		var _slot = ds_grid_get(global.inventory,obj_mario_farm.inv.slot_use[0],obj_mario_farm.inv.slot_use[1])
		if(obj_selected!=noone){
			if(keyboard_check_pressed(vk_control)){
				audio_play_sound(audio_selecting,0,0)
			}
			if(_slot[1] == obj_hoe_drop){
				var _obj_proximo = instance_nearest(x_world,y_world,obj_plant_debug)
				
				if (keyboard_check_pressed(vk_control) and obj_selector.col = false and obj_selected !=noone) {
					var _plant = instance_nearest(x_world,y_world,obj_plant_debug_1)
					 if(_plant!=noone){
						if(_plant.x = x_world and _plant.y = y_world ){
							if _plant.image_index > 1{
								if(_plant!=noone){
								var _drop = instance_create_layer(x_world,y_world,"Instances_2",_plant.criar_obj_crescido)
								_drop.qtd = _plant.qtd
								_drop.absorved = true
								instance_destroy(_plant)
								//instance_create_layer(x,y,layer,obj_plant_debug)
								}
							}else{
								var _drop = instance_create_layer(x_world,y_world,"Instances_2",_plant.criar_obj_crescido)
								_drop.qtd = _plant.qtd
								_drop.absorved = true
								instance_create_layer(x_world,y_world,layer,obj_plant_debug)
								instance_destroy(_plant)
							}
						}
					}else if(_obj_proximo != noone){
						if(_obj_proximo.x = x_world and _obj_proximo.y = y_world ){
							instance_destroy(_obj_proximo)
						}else{
							instance_create_layer(x_world, y_world, layer, obj_plant_debug)
						}
					}
					else{
							var plant = instance_create_layer(x_world,y_world,layer,obj_plant_debug)
							plant.inv_player = _slot[5]
							//instance_create_layer(x_world, y_world, layer, obj_plant_debug)
					}
		        } 
			}else if(_slot[1] != obj_hoe_drop and _slot[1] !=obj_fertilizer){
				var _obj_proximo = instance_nearest(x,y,obj_selected)
		        if (keyboard_check_pressed(vk_control) and obj_selector.col = false and obj_selected !=noone) {
					if(_obj_proximo!=noone){
						if(_obj_proximo.x = x_world and _obj_proximo.y = y_world ){
							instance_destroy(_obj_proximo)
						}else{
							if( (_entidade_proxima!=noone and _entidade_proxima.x != x_world and _entidade_proxima.y != y_world)){
								var _obj = instance_create_layer(x_world, y_world, layer, obj_selected);
								_obj.val = 1
								_slot[4]-=1
								ds_grid_set(global.inventory,obj_mario_farm.inv.slot_use[0],obj_mario_farm.inv.slot_use[1],_slot)
							}else{
								var _obj = instance_create_layer(x_world, y_world, layer, obj_selected);
								_obj.val = 1
								_slot[4]-=1
								ds_grid_set(global.inventory,obj_mario_farm.inv.slot_use[0],obj_mario_farm.inv.slot_use[1],_slot)
								
							}
						}
					}else{
						var _obj = instance_create_layer(x_world, y_world, layer, obj_selected);
						_obj.val = 1
						_slot[4]-=1
						ds_grid_set(global.inventory,obj_mario_farm.inv.slot_use[0],obj_mario_farm.inv.slot_use[1],_slot)
					}
		        } 
			}else if(_slot[1] == obj_fertilizer){
				var _obj_proximo = instance_nearest(x,y,obj_selected)
		        if (keyboard_check_pressed(vk_control) and obj_selector.col = false and obj_selected !=noone) {
					if(_obj_proximo!=noone){
						if(_obj_proximo.x = x_world and _obj_proximo.y = y_world ){
							instance_destroy(_obj_proximo)
						}else{
							if( (_entidade_proxima!=noone and _entidade_proxima.x != x_world and _entidade_proxima.y != y_world)){
								instance_create_layer(x_world, y_world, layer, obj_selected);
								_slot[4]-=0.5
								ds_grid_set(global.inventory,obj_mario_farm.inv.slot_use[0],obj_mario_farm.inv.slot_use[1],_slot)
							}else{
								var _obj = instance_create_layer(x_world, y_world, layer, obj_selected);
								_obj.val = 1
								_slot[4]-=1
								ds_grid_set(global.inventory,obj_mario_farm.inv.slot_use[0],obj_mario_farm.inv.slot_use[1],_slot)
								
							}
						}
					}else{
						instance_create_layer(x_world, y_world, layer, obj_selected);
						_slot[4]-=0.5
						ds_grid_set(global.inventory,obj_mario_farm.inv.slot_use[0],obj_mario_farm.inv.slot_use[1],_slot)
					}
		        } 
			}
		}
		if(keyboard_check_pressed(vk_alt)){
			var _animal = instance_nearest(x_world,y_world,obj_animal)
			if(_animal!= noone){
				if((_animal.x >= x_world  and _animal.x<= x_world+16) and (_animal.y >= y_world  and _animal.y<= y_world+16)){
					if(_animal.adubo>0){
						var temp_item = instance_create_layer(-10,-10,layer,obj_fertilizer)
						add_item_qtd(temp_item.sprite_index,temp_item.object_index,"fertilizer",_animal.adubo,noone)
						obj_mario_farm.adubo+=_animal.adubo
					}
					show_debug_message(obj_mario_farm.adubo)
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


if(keyboard_check_pressed(vk_tab)){
	open = !open  
	
}
if(open and player.state != player_edit){
	
	player.last_state = player.state
	player.state = player_edit
}else if(open == false and player.state == player_edit) {
	player.state = player.last_state
	player.last_state = noone
}
show_debug_message(player.state)
if(open){
	var min_slot_x = 0
	var min_slot_y = 0
	var max_slot_x = ds_grid_width(global.inventory)-1
	var max_slot_y = ds_grid_height(global.inventory)-1
	if(keyboard_check_pressed(vk_left)){
		if slot_selected[0] >min_slot_x{
			slot_selected[0] -=1
		}else{
			slot_selected[0] = max_slot_x
		}
	}
	if(keyboard_check_pressed(vk_right)){
		if slot_selected[0] < max_slot_x{
			slot_selected[0] +=1
		}else{
			slot_selected[0] = min_slot_x
		}
	}
	if(keyboard_check_pressed(vk_up)){
		if slot_selected[1] > min_slot_y{
			slot_selected[1] -=1
		}else{
			slot_selected[1] = max_slot_y
		}
	}
	if(keyboard_check_pressed(vk_down)){
		if slot_selected[1] < max_slot_y{
			slot_selected[1] +=1
		}else{
			slot_selected[1] = min_slot_y
		}
	}
	var slot = ds_grid_get(global.inventory,slot_selected[0],slot_selected[1])
	if(slot !=0){
		obj_selected = slot[1]
	}
	if(keyboard_check_pressed(ord("A")) and slot!=0){
		instance_create_layer(100,0,layer,obj_selected)
	}
}else{
	slot_selected = [0,0]
}
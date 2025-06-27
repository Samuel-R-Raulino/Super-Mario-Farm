
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
	if(keyboard_check_pressed(vk_left) and slot_selected[0] >0){
		slot_selected[0] -=1
	}
	if(keyboard_check_pressed(vk_right) and slot_selected[0] <ds_grid_width(global.inventory)-1){
		slot_selected[0] +=1
	}
	if(keyboard_check_pressed(vk_up) and slot_selected[1] >0){
		slot_selected[1] -=1
	}
	if(keyboard_check_pressed(vk_down) and slot_selected[1] <ds_grid_height(global.inventory)-1){
		slot_selected[1] +=1
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
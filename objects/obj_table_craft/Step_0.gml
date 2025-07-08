
if(keyboard_check_pressed(vk_alt) and distance_to_object(obj_mario_farm) < 30){
	open = !open
	if(start_sound){
		play_sound(audio_open_inventory)
		start_sound = false
	}else{
		play_sound(audio_close_inventory)
		start_sound = true
	}
}
if(keyboard_check_pressed(ord("N"))){
	new_state = !new_state
}
if(keyboard_check_pressed(ord("M"))){
	room_restart()
}
if(open and player.state != player_edit and !Main.player_stop){
	player.last_state = player.state
	player.state = player_edit
}else if(open == false and player.state == player_edit and !Main.player_stop and change_state = true) {
	player.state = player.last_state
	player.last_state = noone
	change_state = false
}
if(open){
	var min_slot_x = 0
	var min_slot_y = 0
	var max_slot_x = ds_grid_width(inventory)-1
	var max_slot_y = ds_grid_height(inventory)-1
	if(keyboard_check_pressed(ord("A"))){
		if slot_selected[0] >min_slot_x{
			slot_selected[0] -=1
		}else{
			slot_selected[0] = max_slot_x
		}
	}
	if(keyboard_check_pressed(ord("D"))){
		if slot_selected[0] < max_slot_x{
			slot_selected[0] +=1
		}else{
			slot_selected[0] = min_slot_x
		}
	}
	if(keyboard_check_pressed(ord("W"))){
		if slot_selected[1] > min_slot_y{
			slot_selected[1] -=1
		}else{
			slot_selected[1] = max_slot_y
		}
	}
	if(keyboard_check_pressed(ord("S"))){
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
	
}
for(var i =0; i < ds_grid_width(inventory);i++){
		for(var ii =0; ii < ds_grid_height(inventory);ii++){
			var slot = ds_grid_get(inventory,i,ii)	
			if(slot!=0){
				if(slot[3] == "qtd"){
					if(slot[4] <=0){
						ds_grid_set(inventory,i,ii,0)
					}
				}
			}
		}
	}
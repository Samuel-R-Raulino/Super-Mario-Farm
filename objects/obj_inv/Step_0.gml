
if(keyboard_check_pressed(vk_tab)){
	open = !open  
	
}
if(keyboard_check_pressed(ord("N"))){
	new_state = !new_state
}
if(open and player.state != player_edit and !Main.player_stop){
	
	player.last_state = player.state
	player.state = player_edit
}else if(open == false and player.state == player_edit and !Main.player_stop) {
	player.state = player.last_state
	player.last_state = noone
}
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
	
}
for(var i =0; i < ds_grid_width(global.inventory);i++){
		for(var ii =0; ii < ds_grid_height(global.inventory);ii++){
			var slot = ds_grid_get(global.inventory,i,ii)	
			if(slot!=0){
				if(slot[3] == "qtd"){
					if(slot[4] <=0){
						ds_grid_set(global.inventory,0,0,0)
					}
				}
			}
		}
	}
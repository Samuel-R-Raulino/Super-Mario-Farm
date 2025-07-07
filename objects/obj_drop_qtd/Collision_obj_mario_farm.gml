var added = false
play_sound(audio_take_item)
for (var i = 0; i < ds_grid_width(global.inventory); i ++){
	for (var ii= 0; ii < ds_grid_width(global.inventory); ii ++){
		var slot = ds_grid_get(global.inventory,i,ii)
		
		if(slot != 0 and added = false){
			if(is_array(slot)){
				if(slot[1] == object_index){
					slot[4] += val 
					ds_grid_set(global.inventory,i,ii,slot)
					added = true
					break
				}
			}
		}
	}
	if(added){
		break
	}
}
if(!added){
for (var i = 0; i < ds_grid_width(global.inventory); i ++){
	for (var ii= 0; ii < ds_grid_width(global.inventory); ii ++){
		var slot = ds_grid_get(global.inventory,i,ii)
		if(slot == 0 and added = false){
			ds_grid_set(global.inventory,i,ii,[sprite_index,object_index,nome,"qtd",val,func,object])
			added = true
			break
		}
	}
	if(added){
		break
	}
}
}
instance_destroy()
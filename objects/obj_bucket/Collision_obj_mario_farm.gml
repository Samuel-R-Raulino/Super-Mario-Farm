var added = false
for (var i = 0; i < ds_grid_width(global.inventory); i ++){
	for (var ii= 0; ii < ds_grid_width(global.inventory); ii ++){
		var slot = ds_grid_get(global.inventory,i,ii)
		if(slot == 0 and added = false){
			ds_grid_set(global.inventory,i,ii,[sprite_index,object_index,"uni",noone,func,obj_water])
			added = true
			break
		}
	}
	if(added){
		break
	}
}
instance_destroy()
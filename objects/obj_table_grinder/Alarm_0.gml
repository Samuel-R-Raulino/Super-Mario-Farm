if(crescer and making < 100){
	making+=20
}else if(making>= 100 and object!=noone){
	instance_create_layer(x,y-5,"Instances_3",obj_pre_fertilizer)
	var slot = obj_mario_farm.inv.slot_selected
	var slot_decrease = ds_grid_get(global.inventory,slot[0],slot[1])
	slot_decrease[4]-=4
	crescer = false
	making = 0
}
alarm[0] = 45
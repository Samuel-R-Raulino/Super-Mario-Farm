if(distance_to_object(obj_mario_farm) < 10 and object!=noone){
	if(keyboard_check(vk_space)){
		crescer = true
	}else{
		crescer = false
		if(making < 100){making = 0}
		
	}
}
var object_selected = obj_mario_farm.inv.obj_selected
var condition_1 = object_selected!=noone and object_selected == obj_carrot
var condition_2 = object_selected!=noone and object_selected == obj_wheat
var condition_3 = object_selected!=noone and object_selected == obj_mate
if(condition_1 or condition_2 or condition_3){
	object = object_selected
}

show_debug_message(object)
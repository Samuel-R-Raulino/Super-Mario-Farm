if(distance_to_object(obj_mario_farm) < 50 and object!=noone){
	if(keyboard_check(vk_space) or gamepad_button_check(0, gp_face3)){
		crescer = true
	}else{
		crescer = false
		if(making < 100){making = 0}
		
	}
}
var object_selected = obj_mario_farm.inv.obj_selected
var condition_1 = object_selected!=noone and object_selected == obj_pre_fertilizer
if(condition_1){
	object = object_selected
}

show_debug_message(object)
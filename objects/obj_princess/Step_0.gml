if(global.destroyed and distance_to_object(obj_player) <2){
	alarm[0]=45
	global.destroyed = false
}
if(alarm[0]>3){
	sprite_index = spr_princess_1
}
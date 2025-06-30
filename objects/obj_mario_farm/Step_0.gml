if(substate!=noone){
	script_execute(substate)
	changed = true
}
if(substate == noone and changed){
	instance_destroy(obj_gun_farm)
	changed = false
}
script_execute(state)
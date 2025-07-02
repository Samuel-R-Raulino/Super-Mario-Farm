if(substate!=noone){
	script_execute(substate)
	changed = true
}
else if(substate == noone and changed){
	instance_destroy(obj_gun_farm)
	changed = false
	gun_created=false
	stop = false
}

script_execute(state)
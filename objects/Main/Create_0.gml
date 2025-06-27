if room != rm_farm_stage{
	var player_inst = instance_find(obj_player, 0);
	criado = false
	if (player_inst != noone && xx >= 0 && yy >= 0) {
	    player_inst.x = xx;
	    player_inst.y = yy;
	    if (variable_instance_exists(player_inst, "old_state")) {
			if(player_inst.old_state!=noone){
				player_inst.state = player_inst.old_state;
			}
	        player_inst.old_state = noone;
	    } else {
	        player_inst.old_state = noone;
	        player_inst.state = noone;
	    }
	} else if (player_inst == noone) {
	    var obj_player_ = instance_create_layer(x, y, layer, obj_player);
	    obj_player_.x = xx;
	    obj_player_.y = yy;
	    // Inicialize old_state na criação
	    obj_player_.old_state = noone;
	    obj_player_.state = noone;
	}
}else{
	change_state = false
	state = noone
	state = control_farm
	x_selector = 0
	y_selector = 0
	player_stop = false
	obj_selected = obj_plant_debug
	objects = [obj_plant_debug,obj_plant_debug_1,obj_water]
	sprites = [spr_plant_debug,spr_plant_debug,spr_water_debug]
	blend = [c_white,c_black]
	num_clicado = 0
}

/*
if(room = Room1_1){
play_music(audio_overworld)
}&/

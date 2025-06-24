var player = other.player 
if(player.state != death){
	if(state == Enemies_events_kopa){
		player.vspd=-8;
		
		audio_play_sound(audio_kick,0,0)

		instance_create_layer(x,y,layer,obj_kopa_protection)
		var _kopa = instance_create_layer(x,y,layer,obj_kopa_brun)
		_kopa.state = start_event
		instance_destroy()
	}else if(state == Enemies_events_kopa_jump){
		player.vspd=-8;
		vspd+=8
		sprite_index = spr_kopa
		audio_play_sound(audio_kick,0,0)
		state = Enemies_events_kopa
	}
}
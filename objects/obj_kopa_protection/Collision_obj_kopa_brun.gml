if(other.state = Enemies_events_kopa){
	if(dir=""){
		kopa_fusion = other
		state = kopa_transform
	}else{
		instance_create_layer(x,y,layer,obj_effect)
		audio_play_sound(audio_kick,0,0)
		instance_destroy(other)
	}
}
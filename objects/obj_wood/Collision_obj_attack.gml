if(other.image_index ==1){
	instance_destroy(other)
	audio_stop_sound(audio_dash)
	life-=1
	audio_play_sound(audio_dash_impact,0,0)

}
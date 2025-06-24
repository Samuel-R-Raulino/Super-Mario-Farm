function play_sound(sound){
	if(!audio_is_playing(sound)){
		audio_play_sound(sound, 0, false);
	}
}
function play_music(sound){
	if(audio_is_playing(audio_underground)){
		audio_stop_sound(audio_underground)
	}
	if(audio_is_playing(audio_athetic)){
		audio_stop_sound(audio_athetic)
	}
	if(audio_is_playing(audio_romance)){
		audio_stop_sound(audio_romance)
	}
	if(audio_is_playing(audio_overworld)){
		audio_stop_sound(audio_overworld)
	}
	audio_play_sound(sound,0,0)
}
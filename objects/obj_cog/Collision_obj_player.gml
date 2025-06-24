if(other.state == main){
	other.state = mario_grow_up
}
audio_play_sound(audio_mario_grow,0,0)
instance_destroy()
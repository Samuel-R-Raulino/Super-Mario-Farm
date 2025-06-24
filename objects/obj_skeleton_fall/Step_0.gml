if(image_index = 1){
	stop_animation = true
}
if(stop_animation){
	if(alarm[0]<=15){
		image_index = 0
	}else{
		image_index = 1
	}
}
if(alarm[0] == 14){
	audio_play_sound(audio_skeleton_fall,0,0)
}
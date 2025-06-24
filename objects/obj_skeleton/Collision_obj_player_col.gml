var player = other.player 
if(player.state != death){
	player.vspd=-8;
	audio_play_sound(audio_kick,0,0)
	instance_create_layer(x,y,layer,obj_skeleton_fall)
	instance_destroy()
}
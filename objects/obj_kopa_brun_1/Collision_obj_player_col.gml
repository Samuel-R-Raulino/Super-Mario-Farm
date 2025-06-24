var player = other.player 
if(player.state != death){
	player.vspd=-8;
	audio_play_sound(audio_kick,0,0)
	
	state = die_event_gumpa
}
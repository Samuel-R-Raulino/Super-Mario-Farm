script_execute(state)
var _player = instance_nearest(x,y,obj_player)
if(_player.state == pet_state){
	_player.x=x+2
	_player.y=y-5
	_player.image_xscale = image_xscale
	state = yoshi_move
}/*
if(_player.state == pet_state and keyboard_check_pressed(vk_space)){
	change_to_eat = true
	_player.x=x+2
	_player.y=y-5
	_player.image_xscale = image_xscale
	audio_play_sound(audio_yoshi_eat,0,0)
	if(image_xscale = 1){
		var _tongue = instance_create_layer(x-15,y,layer,obj_yoshi_tongue)
		_tongue.image_xscale = image_xscale
		_tongue.yy = y
		_tongue.hspd = -3
		
	}else if(image_xscale = -1){
		var _tongue = instance_create_layer(x+17,y,layer,obj_yoshi_tongue)
		_tongue.image_xscale = image_xscale
		_tongue.yy = y
		_tongue.hspd = +3
	}
	
	
}
if(change_to_eat){
	state = yoshi_eat
}
// se ele aperta espaço ele vai pro estado de comer
// enquanto ele estiver no estado de comer ele nunca sai se não se colidir com a lingua
if(state == 0){
	sprite_index = spr_block_coin_1
}else{
	sprite_index = spr_block_coin 
	image_index = 1
}
if(place_meeting(x,y+1,obj_player_col_jump)){
	var player = instance_nearest(x,y,obj_player)
	
	if(state == 0 and player.vspd<=0){
		state = 1
		var _coin = instance_create_layer(x,y,layer,obj ) global.coin++
	}
}
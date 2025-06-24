if(place_meeting(x,y,obj_player_col)){
	var _other = instance_nearest(x,y,obj_player_col)
	if(_other.player.star){
		instance_destroy()
	}
}

	if(dir == "left"){
		hspd= -1
	}else if(dir == "right"){
		hspd= 1
	}else{
		hspd = 0
	}
	if(place_meeting(x+1,y,obj_block) or place_meeting(x+1,y,obj_player) or place_meeting(x+1,y,obj_block_1_reverse)){
		dir = "left"
	}else if(place_meeting(x-1,y,obj_block) or place_meeting(x-1,y,obj_player) or place_meeting(x-1,y,obj_block_1_reverse)){
		dir = "right"
	}   
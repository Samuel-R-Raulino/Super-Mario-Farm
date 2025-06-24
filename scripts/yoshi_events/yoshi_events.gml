function yoshi_move(){
	

	right = keyboard_check(vk_right)
	left = keyboard_check(vk_left)
	jump = keyboard_check_pressed(vk_up)
	move = right - left 
	hspd = move * spd;
	if(hspd!=0){image_xscale =-sign(hspd)*1}
	var _subPixel = .5 
	if place_meeting(x+hspd,y,obj_block)
	{
		if !place_meeting(x+hspd, y - abs(hspd)-1,obj_block){
			while place_meeting(x+hspd,y,obj_block){y-=_subPixel}
		}else{
			var _pixelCheck = _subPixel * sign(hspd);
			while !place_meeting(x+_pixelCheck,y,obj_block){
				x+=_pixelCheck 
			}
			hspd=0
		}
	}
	if vspd >=0 and !place_meeting(x+hspd,y+1,obj_block) and place_meeting(x+hspd,y + abs(hspd)+1,obj_block)
	{
		while !place_meeting(x+hspd, y+_subPixel,obj_block){y+=_subPixel}
	}
	x+=hspd
	vspd +=grav 


	var _subPixel = .5 
	if place_meeting(x,y+vspd,obj_block)
	{
		freeze = false
		var _pixelCheck = _subPixel * sign(vspd);
		while !place_meeting(x,y+_pixelCheck,obj_block){
			y+=_pixelCheck 
		}
		vspd=0
	}
	y+=vspd
	if(vspd!=0){
		if(run == true and air == true and dash_ == false){
			sprite_index = spr_pet_yoshi_jump
		}else if(dash_ == true){
			//sprite_index = spr_player_mario_dash
		}else{
			//sprite_index = spr_player_mario_jump
		}
	}else
	if(hspd!=0){
		if(run_animation){
			sprite_index = spr_pet_yoshi_walk
		}else{
			sprite_index = spr_pet_yoshi_walk
		}
	}else if(hspd == 0 and dash_ == false){
		sprite_index = spr_pet_yoshi_idle
	}

	if(!place_meeting(x,y+1,obj_block)){air = true}else{air=false}

	if(keyboard_check(ord("D"))){
		run = true
	}else if(!keyboard_check(ord("D")) and air = false){
		run_animation = false
		run = false
		time = 0
		spd = 2
	}
	//jump
	if jump and place_meeting(x,y+1,obj_block){
		changed = false
		vspd = jspd
		audio_play_sound(audio_general_jump,0,0)
	}else if(place_meeting(x,y+1,obj_block)){
		dash_ = false
	}
	instance_destroy(obj_yoshi_tongue)
	qtd_tongue = 0
	instance_destroy(obj_yoshi_tongue_base)
	instance_destroy(obj_antitb_mask)
}
function yoshi_eat(){
	var _mask = instance_create_layer(x,y,layer,obj_antitb_mask)
	_mask.xscale = sign(hspd)*1
	_mask.x = x
	_mask.y = y
	if(hspd >0){
		hspd-=0.1
	}else if(hspd <0){
		hspd+=0.1
	}
	sprite_index = spr_pet_yoshi_eat
	image_index = 1
	var _subPixel = .5 
	if place_meeting(x+hspd,y,obj_block)
	{
		if !place_meeting(x+hspd, y - abs(hspd)-1,obj_block){
			while place_meeting(x+hspd,y,obj_block){y-=_subPixel}
		}else{
			var _pixelCheck = _subPixel * sign(hspd);
			while !place_meeting(x+_pixelCheck,y,obj_block){
				x+=_pixelCheck 
			}
			hspd=0
		}
	}
	if vspd >=0 and !place_meeting(x+hspd,y+1,obj_block) and place_meeting(x+hspd,y + abs(hspd)+1,obj_block)
	{
		while !place_meeting(x+hspd, y+_subPixel,obj_block){y+=_subPixel}
	}
	x+=hspd
	vspd+=grav
	if place_meeting(x,y+vspd,obj_block)
	{
		freeze = false
		var _pixelCheck = _subPixel * sign(vspd);
		while !place_meeting(x,y+_pixelCheck,obj_block){
			y+=_pixelCheck 
		}
		vspd=0
	}
	y+=vspd
}
function idle(){
	hspd = 0;
	if(hspd!=0){image_xscale =-sign(hspd)*1}
	var _subPixel = .5 
	if place_meeting(x+hspd,y,obj_block)
	{
		if !place_meeting(x+hspd, y - abs(hspd)-1,obj_block){
			while place_meeting(x+hspd,y,obj_block){y-=_subPixel}
		}else{
			var _pixelCheck = _subPixel * sign(hspd);
			while !place_meeting(x+_pixelCheck,y,obj_block){
				x+=_pixelCheck 
			}
			hspd=0
		}
	}
	if vspd >=0 and !place_meeting(x+hspd,y+1,obj_block) and place_meeting(x+hspd,y + abs(hspd)+1,obj_block)
	{
		while !place_meeting(x+hspd, y+_subPixel,obj_block){y+=_subPixel}
	}
	x+=hspd
	vspd +=grav 


	var _subPixel = .5 
	if place_meeting(x,y+vspd,obj_block)
	{
		freeze = false
		var _pixelCheck = _subPixel * sign(vspd);
		while !place_meeting(x,y+_pixelCheck,obj_block){
			y+=_pixelCheck 
		}
		vspd=0
	}
	y+=vspd
}
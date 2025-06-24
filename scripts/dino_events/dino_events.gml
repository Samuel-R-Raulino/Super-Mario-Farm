function die_event_dino(){
	hspd = 0
	if(life == 1){
		sprite_index = spr_dino_0
	}else if(life == 2){
		sprite_index = spr_dino_2
	}
	if(!die and life == 1){
		alarm[3] = 30
		die = true
	}else if(!die and life == 2){
		alarm[1] = 30
		die = true
	}
	
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
function dino_main(){
	die = false
	var spd_ = 0.5
	if(life == 3){
		sprite_index = spr_dino_3
		alarm[4] = 30
		spd_ = 0.5
	}else if(life == 2){
		sprite_index = spr_dino_1
		spd_ = 1
	}
	
	
	if(dir == "left"){
		hspd= -spd_
	}else if(dir == "right"){
		hspd= spd_
	}
	if(place_meeting(x+1,y,obj_block)){
		dir = "left"
	}else if(place_meeting(x-1,y,obj_block)){
		dir = "right"
	}
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
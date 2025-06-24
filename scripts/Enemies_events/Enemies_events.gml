function skeleton_main(){
	if(dir == "left"){
		hspd= -0.5
	}else if(dir == "right"){
		hspd= 0.5
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
function kick_protection_main(){
	
	if(dir == "left"){
		hspd= -3
	}else if(dir == "right"){
		hspd= 3
	}
	if(place_meeting(x+1,y,obj_block)){
		dir = "left"
	}else if(place_meeting(x-1,y,obj_block)){
		dir = "right"
	}
	if(place_meeting(x+1,y,obj_player)){
		dir = "left"
	}else if(place_meeting(x-1,y,obj_player)){
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
function Enemies_events_kopa(){
	
	if(dir == "left"){
		hspd= -0.5
	}else if(dir == "right"){
		hspd= 0.5
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
function Enemies_events_kopa_jump(){
	sprite_index = spr_kopa_1
	if(dir == "left"){
		hspd= -0.5
	}else if(dir == "right"){
		hspd= 0.5
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
	
	if(place_meeting(x,y+1,obj_block)){
		show_debug_message("jump")
		vspd-=8
	}
}
function die_event(){
	hspd = 0
	sprite_index = spr_kopa_die
	if(!die){
		alarm[3] = 30
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
function stop_event(){
	sprite_index = spr_koopa_fall
	hspd = -spd_start
	if(start){
		alarm[1] = 60;
		start = false
		
	}
	hspd = 0 
	
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
function start_event(){
	hspd=-1;
	sprite_index = spr_koopa_fall
	if(start){
		alarm[0] = 80;
		start = false
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
function die_event_gumpa(){
	hspd = 0
	sprite_index = spr_gumpa_die
	if(!die){
		alarm[3] = 30
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
function main_gumpa(){
	sprite_index = spr_gumpoa
	if(dir == "left"){
		hspd= -0.5
	}else if(dir == "right"){
		hspd= 0.5
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
function spiny_event(){
	if(dir == "left"){
		hspd= -0.5
	}else if(dir == "right"){
		hspd= 0.5
	}
	if(place_meeting(x+1,y,obj_block)){
		dir = "left"
	}else if(place_meeting(x-1,y,obj_block)){
		dir = "right"
	}
	
	if(!place_meeting(x,y+1,obj_block)){
		sprite_index = spr_spiny_fall
	}else{
		sprite_index = spr_spiny
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
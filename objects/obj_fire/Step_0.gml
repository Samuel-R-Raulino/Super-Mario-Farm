if(place_meeting(x,y+1,obj_block)){
	vspd -= 3
}
hspd = xscale*8
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

var size_state = mov_little
if(size_state!=noone){
	if(dir = ""){
		hspd = 0
		vspd = 0
		image_xscale = 1
		image_yscale = 1
	}else if(dir = "left"){
		sprite_index =  size_state[0]
		image_xscale = 1
		image_yscale = 1
		hspd = -spd
		vspd = 0
	}else if(dir = "right"){
		sprite_index =  size_state[0]
		image_xscale = -1
		image_yscale = 1
		hspd = +spd
		vspd = 0
	}else if(dir = "up"){
		sprite_index =  size_state[1]
		image_yscale = -1
		image_xscale = 1
		vspd= -spd
		hspd = 0
	}else if(dir = "down"){
		sprite_index =  size_state[1]
		image_yscale = 1
		image_xscale = 1
		vspd = +spd
		hspd = 0
	}
}else{
	size_state = mov_little
}
if(place_meeting(x+hspd,y,obj_block)){
	while(!place_meeting(x+sign(hspd),y,obj_block)){
		x+=sign(hspd)
	}
	hspd = 0
	
}
x+=hspd
if(place_meeting(x,y+vspd,obj_block)){
	while(!place_meeting(x,y+sign(vspd),obj_block)){
		y+=sign(vspd)
	}
	vspd = 0
}
if(!place_meeting(x,y,obj_block)){
	turned = false
}
y+=vspd


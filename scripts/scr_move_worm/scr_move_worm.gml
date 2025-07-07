function move_worm(){
	
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
}
function move_solo(){
	var size_state = mov_little
if(size_state!=noone){
	show_debug_message("foi")
	var _plant = instance_nearest(x,y,obj_plant_debug)
	if(x > x-_plant.x){
		dir="left"
	}else if(x < x-_plant.x){
		dir="right"
	}else if(y > y-_plant.y){
		dir="up"
	}else if(y < y-_plant.y){
		dir="down"
	}
	show_debug_message(dir)
	if(place_meeting(x,y,_plant)){
		_plant.fertir+=10
		instance_destroy()
	}
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
}
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
	var dx = _plant.x - x;
	var dy = _plant.y - y;
	if(_plant!=noone){
		if(dim_dir = "horizontal"){
		    if (dx > 2) {
		        dir = "right";
		    } else if(dx < -2){
		        dir = "left";
		    }else{
				dim_dir = "vertical"	
			}
		}
		if(dim_dir = "vertical"){
			if (dy > 2) {
				dir = "down";
			} else if (dy <-2){
			    dir = "up";
		    
			}else{
				dim_dir = "horizontal"	
			}
		}
		
	
		show_debug_message(dir)
	show_debug_message(dir)
	
	if(place_meeting(x+3,y,_plant)){
		_plant.fertir+=2
		_plant.timer-=20
		instance_destroy()
	}if(place_meeting(x-3,y,_plant)){
		_plant.fertir+=2
		_plant.timer-=20
		instance_destroy()
	}if(place_meeting(x,y+3,_plant)){
		_plant.fertir+=2
		_plant.timer-=20
		instance_destroy()
	}if(place_meeting(x,y-3,_plant)){
		_plant.fertir+=2
		_plant.timer-=20
		instance_destroy()
	}
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
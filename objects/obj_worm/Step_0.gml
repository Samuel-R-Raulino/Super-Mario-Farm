script_execute(state)
var _plant = instance_nearest(x,y,obj_plant_debug)
if _plant !=noone and _plant.fertir>0{
	var _random = random(100)
	if(_random > 90 and _plant.fertir>0){
	state = move_solo
	}else if(_random > 40 and _plant.fertir>10){
	state = move_solo
	}else if(_random > 30 and _plant.fertir>20){
	state = move_solo
	}else if(_random > 10 and _plant.fertir>30){
	state = move_solo
	}
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


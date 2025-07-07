
image_index = index

var col_ver= 0

show_debug_message("o tempo é : "+string(timer))
if(place_meeting(x+1,y,obj_water)){
	crescer = true
}else if(place_meeting(x-1,y,obj_water)){
crescer = true
}else if(place_meeting(x,y+1,obj_water)){
crescer = true
}else if(place_meeting(x,y-1,obj_water)){
crescer = true
}
if(!crescer){
	image_blend = c_aqua
}else{
	image_blend = c_white
}
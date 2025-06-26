
image_index = index

var col_ver= 0
if(place_meeting(x+1,y,obj_water) and index < 2){
	crescer = true
}
if(place_meeting(x-1,y,obj_water) and index < 2){
	crescer = true
}
if(place_meeting(x,y+1,obj_water) and index < 2){
	crescer = true
}
if(place_meeting(x,y-1,obj_water) and index < 2){
	crescer = true
}
if image_index = 2{
	crescer = false
}
var spd = 0.5
if(dir = true and y > y2){
	y-=spd
}else if(dir = true and y <= y2){
	dir = !dir
}

if(dir = false and y < y1){
	y+=spd
}else if(dir = false and y >= y2){
	dir = !dir
}
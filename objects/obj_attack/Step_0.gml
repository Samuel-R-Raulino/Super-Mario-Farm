
if(player.dir == "horizontal"){
	image_xscale = -sign(player.image_xscale)
	if(image_xscale = 1){
		x = player.x+4
	}else if(image_xscale = -1){
		x = player.x-4
	}
}else if(player.dir == "up"){
	image_angle = 90
	y = player.y-4
}else if(player.dir == "down"){
	image_angle = 270
	y = player.y+4
}
if(image_index >=5){
	instance_destroy()
}
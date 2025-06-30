
if(player.dir == "up"){
	sprite_index = noone
	x = player.x 
	y = player.y-10
}else if(player.dir == "down"){
	sprite_index = spr_gun_down
	image_xscale = 2
	x = player.x
	y = player.y+10
}else if(player.dir == "horizontal"){
	sprite_index = spr_gun_horizontal
	image_xscale = -2
	x = player.x
	y = player.y-10
}else{
	x = player.x
	y = player.y
}

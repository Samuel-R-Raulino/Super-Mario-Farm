var xscale = 0.8
if(player.dir == "up"){
	sprite_index = noone
	x = player.x 
	y = player.y-10
}else if(player.dir == "down"){
	sprite_index = spr_gun_down
	x = player.x+4
	y = player.y+10
}else if(player.dir == "horizontal"){
	sprite_index = spr_gun_horizontal
	image_xscale = -sign(player.image_xscale)*xscale
	image_yscale = xscale
	x = player.x+(-sign(player.image_xscale))*10
	y = player.y
}else{
	x = player.x
	y = player.y
}
if(keyboard_check_pressed(vk_space)){
	var _bullet = instance_create_layer(x,y,layer,obj_bullet)
	_bullet.dir = player.dir
	_bullet.xscale = -sign(player.image_xscale) 
}
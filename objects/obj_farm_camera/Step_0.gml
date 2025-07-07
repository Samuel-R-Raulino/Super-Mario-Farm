
var camera_width = floor(((player.x)/camera_get_view_width(view_camera[0])))
var camera_height = floor(((player.y)/camera_get_view_height(view_camera[0])))
var dest_x= camera_width*camera_get_view_width(view_camera[0])
var dest_y = camera_height*camera_get_view_height(view_camera[0])
var cam = view_camera[0];
if(xx < dest_x){
	xx+=4
}else if(xx > dest_x){
	xx-=4
}
if(yy < dest_y){
	yy+=4
}else if(yy > dest_y){
	yy-=4
}
if (xx != dest_x || yy != dest_y) {
    // A câmera ainda está se movendo
    changed = true;

    if (player.state != player_change_camera) {
        player.last_state = player.state;
        player.state = player_change_camera;
    }
} else {
    // A câmera chegou ao destino
    if (changed) {
        player.state = player.last_state;
        player.last_state = noone;
        changed = false;
    }
}

camera_set_view_pos(cam, xx, yy);
/*
var camera_width = camera_get_view_width(view_camera[0])
var camera_height = camera_get_view_height(view_camera[0]) 
if player.x > camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0]) and dir = ""{
	var xx = x
	dest_x = xx + camera_width
	dir = "right"
}
if player.x <= camera_get_view_x(view_camera[0]) and dir = ""{
	var xx = x
	dest_x = xx - camera_width
	dir = "left"
}

if player.y > camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0]) and dir = ""{
	var yy = y
	dest_y = yy + camera_height
	dir = "down"
}
if player.y <= camera_get_view_y(view_camera[0]) and dir = ""{
	var yy = y
	dest_y = yy - camera_height
	dir = "up"
}
/*
if obj_mario_farm.x <  camera_get_view_x(view_camera[0]) {
	x-=camera_get_view_width(view_camera[0])
}
if obj_mario_farm.y > camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0]){
	y+=camera_get_view_height(view_camera[0])
}
if obj_mario_farm.y <  camera_get_view_y(view_camera[0]) {
	y-=camera_get_view_height(view_camera[0])
}*/
var spd = 4
if(dir = "right"){
	if( x <= dest_x){
		x+=spd
		if player.state != player_change_camera{
			
			player.last_state = player.state
			player.state = player_change_camera
		}
	}else{
		player.state = player.last_state 
		player.last_state = noone
		dir = ""
	}
}
if(dir = "left"){
	if( x >= dest_x){
		x-=spd
		if player.state != player_change_camera{
			
			player.last_state = player.state
			player.state = player_change_camera
		}
	}else{
		player.state = player.last_state 
		player.last_state = noone
		dir = ""
	}
}
if(dir = "up"){
	if( y >= dest_y){
		y-=spd
		if player.state != player_change_camera{
			
			player.last_state = player.state
			player.state = player_change_camera
		}
	}else{
		player.state = player.last_state 
		player.last_state = noone
		dir = ""
	}
}
if(dir = "down"){
	if( y <= dest_y){
		y+=spd
		if player.state != player_change_camera{
			
			player.last_state = player.state
			player.state = player_change_camera
		}
	}else{
		player.state = player.last_state 
		player.last_state = noone
		dir = ""
	}
}
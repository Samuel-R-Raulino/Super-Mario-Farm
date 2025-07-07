function main_farm(){
	with (obj_plant_debug) {
	    image_blend = c_white;
	}
	if(substate != gun_sub_state and !audio_is_playing(audio_dash)){
		if(keyboard_check_pressed(vk_space)){
			var _attack = instance_create_layer(x,y,"Instances_5",obj_attack)
			_attack.player = self
		}
	}
	/*_plant = instance_nearest(x, y, obj_plant_debug);
	if (_plant != noone) {
	    if (distance_to_object(_plant) < 60) {
	        _plant.image_blend = c_aqua;
	    }
	}
	*/
	var _left = keyboard_check(vk_left)
	var _right = keyboard_check(vk_right)
	var _up = keyboard_check(vk_up)
	var _down = keyboard_check(vk_down)

	var movex = +_right -_left 
	var movey = +_down -_up 

	hspd = movex*spd 
	vspd = movey*spd 

	if(hspd!=0){
		image_xscale=-sign(hspd)
	}

	if(place_meeting(x+hspd,y,obj_block)){
		while(!place_meeting(x+sign(hspd),y,obj_block)){
			x+=sign(hspd)
		}
		hspd = 0
	}

	if(place_meeting(x,y+vspd,obj_block)){
		while(!place_meeting(x,y+sign(vspd),obj_block)){
			y+=sign(vspd)
		}
		vspd = 0
	}

	x+=hspd 
	y+=vspd 

	if(hspd = 0 and vspd = 0){
		image_index = 0
	}
	if(hspd!=0){
		dir = "horizontal"
	}else if(vspd >0){
		dir = "down"
	}else if (vspd<0){
		dir = "up"
	}
	if(dir == "down"){
		sprite_index = spr_farm_mario_walk_down
	}else if(dir == "up"){
		sprite_index = spr_farm_mario_walk_up
	}else if(dir == "horizontal"){
		sprite_index = spr_farm_mario_attack
	}
}
 function approach(val1,val2,amount){
	if(val1 < val2){
		val1+=amount 
		if(val1 > val2)
		return val2 
	}
	else 
	{
		val1 -=amount 
		if(val1 < val2)
			return val2 ;
	}
	return val1 
}
function instance_nearest_y(){
	var closest = noone;
	var closest_dist = 999999; // valor alto temporário

	with (obj_target) {
	    var dist_y = abs(other.y - y); // diferença vertical entre "eu" e o outro

	    if (dist_y < closest_dist) {
	        closest = id;
	        closest_dist = dist_y;
	    }
		
	}
	return dist_y
}
function death(){
	if(audio_is_playing(audio_start_dead)){
		cutscene = false
		hspd = 0
		vspd = 0
	}else{
		cutscene = true
	}
	var _death = instance_nearest(x,y,obj_point_death)
	sprite_index = spr_player_mario_death
	
	
	//se o objeto foi criado
	//ele deve ir para cima
	//mas se a distancia for maior que 300
	//ele muda de direção e vai para baixo infinitamente
	show_debug_message(distance_to_object(_death))
	if(cutscene){
		if(!audio_is_playing(audio_final_dead) and !dead_sound){
			dead_sound = true
			audio_play_sound(audio_final_dead,0,0)
		}
		if(!cutscene_up and !cutscene_down){
			if(distance_to_object(_death) > 50){
				cutscene_up = true;
				//show_debug_message("aaaa");
			} else {
				vspd -= 1;
			}
	}else if(cutscene_up and !cutscene_down){
		
		if(audio_is_playing(audio_final_dead)){
			vspd += 1;
		}else{
			instance_destroy()
		}
	}

	}
	y+=vspd
}
function down(){
	
	vspd=3
	y+=vspd
}
function move_p_f(){
	spd = 1
	right = gamepad_button_check(0, gp_padr);
	left = gamepad_button_check(0, gp_padl);
	jump = /*gamepad_button_check_pressed(0, gp_face1) ||*/ keyboard_check_pressed(vk_space);
	run = gamepad_button_check(0, gp_face3);
	spin = gamepad_button_check(0,gp_face2)
	move = right - left 

	hspd = move * spd;
	if(place_meeting(x+sign(hspd),y,obj_kopa) or place_meeting(x,y-1,obj_kopa)){
		audio_play_sound(audio_start_dead,0,0)
		instance_create_layer(x,y,layer,obj_point_death)
		state = death
	}
	if(place_meeting(x,y+1,obj_enter)){
		if(keyboard_check(vk_down)){
			audio_play_sound(audio_mario_pipe,0,0)
			state = down
		}
	}
	
	if(hspd!=0){image_xscale =-sign(hspd)*1}
	var _subPixel = .5 
	if place_meeting(x+hspd,y,obj_block)
	{
		if !place_meeting(x+hspd, y - abs(hspd)-1,obj_block){
			while place_meeting(x+hspd,y,obj_block){y-=_subPixel}
		}else{
			var _pixelCheck = _subPixel * sign(hspd);
			while !place_meeting(x+_pixelCheck,y,obj_block){
				x+=_pixelCheck 
			}
			hspd=0
		}
	}
	if vspd >=0 and !place_meeting(x+hspd,y+1,obj_block) and place_meeting(x+hspd,y + abs(hspd)+1,obj_block)
	{
		while !place_meeting(x+hspd, y+_subPixel,obj_block){y+=_subPixel}
	}
	x+=hspd
	vspd +=grav 


	var _subPixel = .5 
	if place_meeting(x,y+vspd,obj_block)
	{
		freeze = false
		var _pixelCheck = _subPixel * sign(vspd);
		while !place_meeting(x,y+_pixelCheck,obj_block){
			y+=_pixelCheck 
		}
		vspd=0
	}
	y+=vspd
}
function cutscene_1(){
	hspd = 0
	var _subPixel = .5 
	if(!no_cut){
		alarm[7] = 45*2
		no_cut = true
	}
	if place_meeting(x+hspd,y,obj_block)
	{
		if !place_meeting(x+hspd, y - abs(hspd)-1,obj_block){
			while place_meeting(x+hspd,y,obj_block){y-=_subPixel}
		}else{
			var _pixelCheck = _subPixel * sign(hspd);
			while !place_meeting(x+_pixelCheck,y,obj_block){
				x+=_pixelCheck 
			}
			hspd=0
		}
	}
	if vspd >=0 and !place_meeting(x+hspd,y+1,obj_block) and place_meeting(x+hspd,y + abs(hspd)+1,obj_block)
	{
		while !place_meeting(x+hspd, y+_subPixel,obj_block){y+=_subPixel}
	}
	x+=hspd
	vspd +=grav 


	var _subPixel = .5 
	if place_meeting(x,y+vspd,obj_block)
	{
		freeze = false
		var _pixelCheck = _subPixel * sign(vspd);
		while !place_meeting(x,y+_pixelCheck,obj_block){
			y+=_pixelCheck 
		}
		vspd=0
	}
	y+=vspd
	
	if(vspd!=0){
		if(run_animation == true and air == true and dash_ == false){
			sprite_index = spr_player_mario_run_jump
		}else if(dash_ == true){
			sprite_index = spr_player_mario_dash
		}else{
			sprite_index = spr_player_mario_jump
		}
	}else
	if(hspd!=0){
		if(run_animation){
			sprite_index = spr_player_mario_run
		}else{
			sprite_index = spr_player_mario_walk
		}
	}else if(hspd == 0 and dash_ == false){
		sprite_index = spr_player_mario
	}
}
function cutscene_2(){
	image_xscale = -1
	if(distance_to_object(obj_princess) >1){
		hspd=+2
	}else{
		hspd = 0
		alarm[8] = 45*10
	}
	var _subPixel = .5 
	if place_meeting(x+hspd,y,obj_block)
	{
		if !place_meeting(x+hspd, y - abs(hspd)-1,obj_block){
			while place_meeting(x+hspd,y,obj_block){y-=_subPixel}
		}else{
			var _pixelCheck = _subPixel * sign(hspd);
			while !place_meeting(x+_pixelCheck,y,obj_block){
				x+=_pixelCheck 
			}
			hspd=0
		}
	}
	if vspd >=0 and !place_meeting(x+hspd,y+1,obj_block) and place_meeting(x+hspd,y + abs(hspd)+1,obj_block)
	{
		while !place_meeting(x+hspd, y+_subPixel,obj_block){y+=_subPixel}
	}
	x+=hspd
	vspd +=grav 


	var _subPixel = .5 
	if place_meeting(x,y+vspd,obj_block)
	{
		freeze = false
		var _pixelCheck = _subPixel * sign(vspd);
		while !place_meeting(x,y+_pixelCheck,obj_block){
			y+=_pixelCheck 
		}
		vspd=0
	}
	y+=vspd
	
	if(vspd!=0){
		if(run_animation == true and air == true and dash_ == false){
			sprite_index = spr_player_mario_run_jump
		}else if(dash_ == true){
			sprite_index = spr_player_mario_dash
		}else{
			sprite_index = spr_player_mario_jump
		}
	}else
	if(hspd!=0){
		if(run_animation){
			sprite_index = spr_player_mario_run
		}else{
			sprite_index = spr_player_mario_walk
		}
	}else if(hspd == 0 and dash_ == false){
		sprite_index = spr_player_mario
	}
}
function move_p(){
	right = gamepad_button_check(0, gp_padr);
	left = gamepad_button_check(0, gp_padl);
	down_ = gamepad_button_check(0, gp_padd);
	jump = gamepad_button_check_pressed(0, gp_face1) || keyboard_check_pressed(vk_space);
	run = gamepad_button_check(0, gp_face3);
	spin = gamepad_button_check(0,gp_face2)
	move = right - left 
	if(global.destroyed){
		state = cutscene_1
	}
	hspd = move * spd;
		if(place_meeting(x,y,obj_kopa) and !star and state == main and !invencible){
			play_music(audio_start_dead)
			instance_create_layer(x,y,layer,obj_point_death)
			state = death
		}else if(place_meeting(x,y,obj_kopa) and star  and state == main ){
			var _other = instance_nearest(x,y,obj_kopa)
			play_music(audio_start_dead)
			instance_destroy(_other)
		}else if(place_meeting(x,y,obj_kopa_1)){
			var _other = instance_nearest(x,y,obj_kopa)
			play_music(audio_start_dead)
			instance_destroy(_other)
		}else if(place_meeting(x,y,obj_kopa) and state !=main){
			alarm[6] = 90
			invencible = true
			state = mario_grow_down
			play_music(audio_start_dead)
		}else if(place_meeting(x+2,y,obj_kopa) and state !=main){
			alarm[6] = 90
			invencible = true
			state = mario_grow_down
			play_music(audio_start_dead)
		}else if(place_meeting(x-2,y,obj_kopa) and state !=main){
			alarm[6] = 90
			invencible = true
			state = mario_grow_down
			play_music(audio_start_dead)
		}
		ver_die = false
	if(place_meeting(x,y+1,obj_enter)){
		if(down_){
			old_state = state
			play_music(audio_mario_pipe)
			state = down
		}
	}
	
	if(hspd!=0){image_xscale =-sign(hspd)*1}
	var _subPixel = .5 
	if place_meeting(x+hspd,y,obj_block)
	{
		if !place_meeting(x+hspd, y - abs(hspd)-1,obj_block){
			while place_meeting(x+hspd,y,obj_block){y-=_subPixel}
		}else{
			var _pixelCheck = _subPixel * sign(hspd);
			while !place_meeting(x+_pixelCheck,y,obj_block){
				x+=_pixelCheck 
			}
			hspd=0
		}
	}
	if vspd >=0 and !place_meeting(x+hspd,y+1,obj_block) and place_meeting(x+hspd,y + abs(hspd)+1,obj_block)
	{
		while !place_meeting(x+hspd, y+_subPixel,obj_block){y+=_subPixel}
	}
	x+=hspd
	vspd +=grav 


	var _subPixel = .5 
	if place_meeting(x,y+vspd,obj_block)
	{
		freeze = false
		var _pixelCheck = _subPixel * sign(vspd);
		while !place_meeting(x,y+_pixelCheck,obj_block){
			y+=_pixelCheck 
		}
		vspd=0
	}
	y+=vspd
	if(run and left or run and right){
		run = true
	}else if(!run and air = false){
		run_animation = false
		run = false
		time = 0
		spd = 2
	}else if(run and !left or run and !right){
		run = false
	}
	//jump
	if(spin and place_meeting(x,y+1,obj_block)){
		dash_ = true
		vspd = -7.15
		audio_play_sound(audio_spin_jump,0,0)
	}else if jump and place_meeting(x,y+1,obj_block){
		changed = false
		vspd = jspd
		audio_play_sound(audio_general_jump,0,0)
	}else if(place_meeting(x,y+1,obj_block)){
		dash_ = false
	}
}
function main(){
	move_p()
	if(vspd!=0){
		if(run_animation == true and air == true and dash_ == false){
			sprite_index = spr_player_mario_run_jump
		}else if(dash_ == true){
			sprite_index = spr_player_mario_dash
		}else{
			sprite_index = spr_player_mario_jump
		}
	}else
	if(hspd!=0){
		if(run_animation){
			sprite_index = spr_player_mario_run
		}else{
			sprite_index = spr_player_mario_walk
		}
	}else if(hspd == 0 and dash_ == false){
		sprite_index = spr_player_mario
	}

	if(!place_meeting(x,y+1,obj_block)){air = true}else{air=false}
	if(air = true ){
		obj = instance_create_layer(x,y,layer,obj_player_col)
		obj.player = self
		obj.yy = y
		if(!jump_atack){obj1 = instance_create_layer((x div 16)*16,(y div 16)*16,layer,obj_player_col_jump) obj1.player = self jump_atack = true}
		
	}else{
		jump_atack = false
		instance_destroy(obj_player_col)
		instance_destroy(obj_player_col_jump)
	}
	

}

function big_main(){
	move_p()
	if(vspd!=0){
		if(run_animation == true and air == true and dash_ == false){
			sprite_index = spr_big_mario_run_jump
		}else if(dash_ == true){
			sprite_index = spr_big_mario_dash
		}else{
			sprite_index = spr_big_mario_jump
		}
	}else
	if(hspd!=0){
		if(run_animation){
			sprite_index = spr_big_mario_run
		}else{
			sprite_index = spr_big_mario_walk
		}
	}else if(hspd == 0 and dash_ == false){
		sprite_index = spr_big_mario
	}

	if(!place_meeting(x,y+1,obj_block)){air = true}else{air=false}
	if(air = true){
		obj = instance_create_layer(x,y+3,layer,obj_player_col)
		
		obj.player = self
		obj1 = instance_create_layer(x,y-10,layer,obj_player_col_jump)
		obj1.player = self
	}else{
		instance_destroy(obj_player_col_jump)
	}
}

function relased_fly(){
	
	
	if(gamepad_button_check_released(0,gp_face3) or place_meeting(x,y+1,obj_block) or !gamepad_button_check(0,gp_padl) and !gamepad_button_check(0,gp_padr)){
		spd =3
		grav = .275
		state = fly_main
	}
	if(gamepad_button_check_released(0,gp_face1)){
		ready = true
		alarm[3] = 60	
	}
}
function mario_grow_up(){
	sprite_index = spr_player_grow_up
	if(image_index>=10){
		state = big_main
	}
}
function mario_grow_down(){
	sprite_index = spr_player_grow_up
	if(image_index>=7){
		state = main
	}
}
function mario_grow_up_fire(){
	sprite_index = spr_fire_mario_transform
	if(image_index>=14){
		state = fire_main
	}
}
function pet_state(){
	sprite_index = spr_player_inv
	var yoshi = instance_nearest(x,y,obj_yoshi)
	//yoshi.x = xx
	//yoshi.y = yy
	x=yoshi.x 
	y=yoshi.y
	//xx++
	
}
function fly_main(){
	qtd_fly = 0
	grav = .275
	move_p()
	fly = gamepad_button_check_pressed(0,gp_face1)
	if(vspd!=0){
		if(run_animation == true and air == true and dash_ == false){
			sprite_index = spr_fly_mario_run_jump
		}else if(dash_ == true){
			sprite_index = spr_fly_mario_dash
		}else{
			sprite_index = spr_fly_mario_jump
		}
	}else
	if(hspd!=0){
		if(run_animation){
			sprite_index = spr_fly_mario_run
		}else{
			sprite_index = spr_fly_mario_walk
		}
	}else if(hspd == 0 and dash_ == false){
		sprite_index = spr_fly_mario
	}
//2 estados de voo
//estado 1 levantar
// -se fly e run_animation = true, ele vai mudar para esse estado
// -consiste no mario voando para cima enquanto o player segura X
// -se ele soltar x ou o mario sobrevoar uma distancia alta, ele muda pro estado 2
//estado 2 voar
// -a gravidade é menor
// -se ele dar press no x ele pula
// - se ele tocar no chão ele volta pro estado de movimento
	if(run_animation and fly){
		state = fly_up
		
	}
	if(flier and place_meeting(x,y+1,obj_block)){
		run = false
		run_animation = false
		flier = false
	}
	
	if(!place_meeting(x,y+1,obj_block)){air = true}else{air=false}
	if(air = true){
		obj = instance_create_layer(x,y,layer,obj_player_col)
		obj.player = self
		obj1 = instance_create_layer(x,y-10,layer,obj_player_col_jump)
		obj1.player = self
	}else{
		instance_destroy(obj_player_col_jump)
	}
}
function fly_up(){
	relased_fly()
	sprite_index = spr_fly_mario_run_jump
	spd = 3
	fly = gamepad_button_check(0,gp_face1)
	move_p()
	var ground = instance_nearest(x,y,obj_block)
	if(fly){
		grav = 0.1
		vspd-=0.0001
		if(distance_to_object(ground) > 40){
			vspd = 0
			state = fly_normal
		}
	}else{
		
		vspd = 0
		state = fly_normal
	}
}
function fly_normal(){
	relased_fly()
	move_p_f()
	
	if (gamepad_button_check_pressed(0, gp_face1)) {
		ready = false
	    if(qtd_fly>=10){
			vspd += 5;
		}else{
			vspd -= 5;
		}
   
	
		qtd_fly++;
	} else {
	    vspd = 0
	}
		grav = 0
	//if (is_flying) {
		
		
	//}
	// No Step
	/*if (gamepad_button_check_pressed(0, gp_face1)) {
		is_flying = !is_flying; // alterna o estado
	}*/
	//quando ele olhar para baixo, e a pessoa apertar x ele vai voar
	/*if (is_flying) {
		sprite_index = spr_fly_mario_run_jump
		if(image_index <2){
			
			image_index = 2
		}else{
			sprite_index = spr_fly_mario_run_jump
			vspd = -2;
			hspd = 0.5*sign(image_xscale)
		}
	} else {
		vspd += grav;
		hspd = 0
		image_index = 0
	}*/
	x += hspd;
	y += vspd;
}
function fire_main(){
	move_p()
	fire = gamepad_button_check_pressed(0, gp_face3);
	if(fire){
		var _fire = instance_create_layer(x,y,layer,obj_fire);
		_fire.xscale = -image_xscale
	}
	if(vspd!=0){
		if(run_animation == true and air == true and dash_ == false){
			sprite_index = spr_fire_mario_run_jump
		}else if(dash_ == true){
			sprite_index = spr_fire_mario_dash
		}else{
			sprite_index = spr_fire_mario_jump
		}
	}else
	if(hspd!=0){
		if(run_animation){
			sprite_index = spr_fire_mario_run
		}else{
			sprite_index = spr_fire_mario_walk
		}
	}else if(hspd == 0 and dash_ == false){
		sprite_index = spr_fire_mario
	}

	if(!place_meeting(x,y+1,obj_block)){air = true}else{air=false}
	if(air = true){
		obj = instance_create_layer(x,y+3,layer,obj_player_col)
		
		obj.player = self
		obj1 = instance_create_layer(x,y-10,layer,obj_player_col_jump)
		obj1.player = self
	}else{
		instance_destroy(obj_player_col_jump)
	}
	


}

function creating(){
	image_index = 0
	image_blend = make_color_rgb(128, 128, 128);
}
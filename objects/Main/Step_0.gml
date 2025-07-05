/*
	right = gamepad_button_check(0, gp_padr);
	left = gamepad_button_check(0, gp_padl);
	down_ = gamepad_button_check(0, gp_padd);
	jump = gamepad_button_check_pressed(0, gp_face1);
	run = gamepad_button_check(0, gp_face3);
	spin = gamepad_button_check(0,gp_face2)
*/

if room == rm_farm_stage and !change_state{
	change_state = true
}
if room == rm_farm_stage{
	var cam_x = camera_get_view_x(view_camera[0]);
	var cam_y = camera_get_view_y(view_camera[0]);
	var x_world = cam_x + x_selector;
	var y_world = cam_y + y_selector;
	if(keyboard_check_pressed(vk_shift)){
		player_stop = !player_stop  
	}
	if(player_stop and obj_mario_farm.state != player_edit and obj_mario_farm.inv.open = false){
		instance_create_layer(x_world,y_world,layer,obj_selector)
		obj_mario_farm.last_state = obj_mario_farm.state
		obj_mario_farm.state = player_edit
	}else if(player_stop == false and obj_mario_farm.state == player_edit and obj_mario_farm.inv.open = false) {
		obj_mario_farm.state = obj_mario_farm.last_state
		obj_mario_farm.last_state = noone
		instance_destroy(obj_selector)
	}
	obj_selected = obj_mario_farm.inv.obj_selected
	script_execute(state)
}
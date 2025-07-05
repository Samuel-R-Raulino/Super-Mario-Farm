var inventory = inv
var scale = 4
var size = 16
if(open){
	for(var i =0; i < ds_grid_width(inventory);i++){
		for(var ii =0; ii < ds_grid_height(inventory);ii++){
			var slot = ds_grid_get(inventory,i,ii)
			var slot_array = [i,ii]
			if slot_selected[0] == i and slot_selected[1] == ii{
				if(keyboard_check_pressed(ord("D"))){
					draw_sprite_ext(spr_slot_2,0,i*scale*size,ii*scale*size,scale,scale,0,c_white,1)
					slot_use = [i,ii]
					//player.substate = slot[3]
					
				}else{
					draw_sprite_ext(spr_slot_1,0,i*scale*size,ii*scale*size,scale,scale,0,c_white,1)
				}
			}else{
				draw_sprite_ext(spr_slot,0,i*scale*size,ii*scale*size,scale,scale,0,c_white,1)
			}
			if(slot != 0){
				if(slot[3] == "qtd"){
					draw_sprite_ext(slot[0],0,i*scale*size,ii*scale*size,scale/2,scale/2,0,c_white,1)
					draw_text(i*scale*size+(10*scale),ii*scale*size+(10*scale),slot[4])
				}else if(slot[2] == "uni"){
					draw_sprite_ext(slot[0],0,i*scale*size,ii*scale*size,scale/2,scale/2,0,c_white,1)
				}
			}
			
		}
	}
}
if (keyboard_check_pressed(vk_control) and open) {
	var _player = instance_nearest(x, y, obj_mario_farm);
	var i = slot_selected[0];
	var ii = slot_selected[1];
	var i2 = _player.inv.slot_selected[0];
	var ii2 = _player.inv.slot_selected[1];
	var _slot_use = _player.inv.slot_selected;
	var _inst = ds_grid_get(global.inventory, _slot_use[0], _slot_use[1]);

	if (is_array(_inst) && _inst[1] == obj_fertilizer) {
		// Faz uma cópia para evitar referência compartilhada
		var _inst_copy = array_copy_manual(_inst);
		add_item_qtd_esp(inventory, _inst_copy, i, ii,i2,ii2, 1, obj_fertilizer);
		show_debug_message(_inst);
	}
}

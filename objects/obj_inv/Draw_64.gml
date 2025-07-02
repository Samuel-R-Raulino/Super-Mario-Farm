
var scale = 4
var size = 16
if(open){
	for(var i =0; i < ds_grid_width(global.inventory);i++){
		for(var ii =0; ii < ds_grid_height(global.inventory);ii++){
			var slot = ds_grid_get(global.inventory,i,ii)
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

var _slot_selected = ds_grid_get(global.inventory,slot_use[0],slot_use[1])
if(_slot_selected != 0 and _slot_selected != noone ){
	draw_sprite_ext(spr_slot,0,(18*scale*size)-10,0*scale*size,scale,scale,0,c_white,1)
	draw_sprite_ext(_slot_selected[0],0,(18*scale*size)-20,(0*scale*size)-10,scale-1,scale-1,0,c_white,1)
	if _slot_selected[1] == obj_barrer_drop{
		obj_selected = _slot_selected[6]
	}else{
		player.substate = _slot_selected[4]
		obj_selected = _slot_selected[1]
	}
}else if(_slot_selected == 0 or _slot_selected == noone){
	player.substate = noone
	obj_selected = noone
}

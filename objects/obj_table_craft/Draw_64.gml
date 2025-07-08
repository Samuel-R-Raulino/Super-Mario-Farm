
var scale = 4
var size = 16
if(open){
	for(var i =0; i < ds_grid_width(inventory);i++){
		for(var ii =0; ii < ds_grid_height(inventory);ii++){
			var slot = ds_grid_get(inventory,i,ii)
			var craft = [0,0]
			if(slot !=0 and slot[0] == spr_hoe){
				craft[0] = ver_item_qtd(inventory,global.inventory,spr_wood_drop,3,false)
				craft[1] = ver_item_qtd(inventory,global.inventory,spr_rock,3,false)
			}else if(slot !=0 and slot[0] == spr_cuia){
				craft[0] = ver_item_qtd(inventory,global.inventory,spr_wood_drop,3,false)
				craft[1] = ver_item_qtd(inventory,global.inventory,spr_rock,1,false)
			}else if(slot !=0 and slot[0] == spr_chimas){
				craft[0] = ver_item_uni(inventory,global.inventory,spr_cuia,0,false)
				craft[1] = ver_item_qtd(inventory,global.inventory,spr_mate,1,false)
			}
			var slot_array = [i,ii]
			if slot_selected[0] == i and slot_selected[1] == ii{
				if(keyboard_check_pressed(ord("G"))){
					audio_play_sound(audio_crafting,0,0)
					draw_sprite_ext(spr_slot_2,0,i*scale*size,ii*scale*size,scale,scale,0,c_white,1)
					if(slot!=0 and craft[0] and craft[1] and slot[0]!=spr_chimas){
						ver_item_qtd(inventory,global.inventory,spr_wood_drop,3,true)
					    ver_item_qtd(inventory,global.inventory,spr_rock,3,true)
						add_item_uni(slot[0],slot[1],noone)
					}else{
						ver_item_uni(inventory,global.inventory,spr_cuia,0,true)
						add_item_uni(slot[0],slot[1],noone)
						//craft[0] = ver_item_uni(inventory,global.inventory,spr_cuia,0,false)
						//craft[1] = ver_item_qtd(inventory,global.inventory,spr_mate,1,false)
					}
					open = false
					//player.substate = slot[3]
					
				}else{
					draw_sprite_ext(spr_slot_1,0,i*scale*size,ii*scale*size,scale,scale,0,c_white,1)
				}
			}else{
					draw_sprite_ext(spr_slot,0,i*scale*size,ii*scale*size,scale,scale,0,c_white,1)
			}
			if(slot != 0){
				if(craft[0] and craft[1]){
					draw_set_color(c_white)
					draw_text(i*scale*size+(10*scale),ii*scale*size+(10*scale),1)
				}else{
					draw_set_color(c_red)
					draw_text(i*scale*size+(10*scale),ii*scale*size+(10*scale),0)
				}
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



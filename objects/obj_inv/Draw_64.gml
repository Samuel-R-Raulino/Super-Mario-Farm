if(open){
	var scale = 4
	var size = 16
	for(var i =0; i < ds_grid_width(global.inventory);i++){
		for(var ii =0; ii < ds_grid_height(global.inventory);ii++){
			var slot = ds_grid_get(global.inventory,i,ii)
			var slot_array = [i,ii]
			if slot_selected[0] == i and slot_selected[1] == ii{
				draw_sprite_ext(spr_slot_1,0,i*scale*size,ii*scale*size,scale,scale,0,c_white,1)
			}else{
				draw_sprite_ext(spr_slot,0,i*scale*size,ii*scale*size,scale,scale,0,c_white,1)
			}
			if(slot != 0){
				draw_sprite_ext(slot[0],0,i*scale*size,ii*scale*size,scale,scale,0,c_white,1)
			}
		}
	}
}
function ver_item_uni(inv,inv2,sprite,qtd,remove){
	var found = false
	for(var i =0; i < ds_grid_width(inv2);i++){
		for(var ii =0; ii < ds_grid_height(inv2);ii++){
			var _slot = ds_grid_get(inv2,i,ii)
			if(_slot != 0){
				if(_slot[0] == sprite){
					if(_slot[2] == "uni"){
						found = true
						if(remove){
							_slot = 0
						}
					}
				}
			}
		}
	}
	if(found){
		return true
	}else{
		return false
	}
}
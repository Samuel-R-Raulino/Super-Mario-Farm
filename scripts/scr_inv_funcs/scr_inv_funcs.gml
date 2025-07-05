function add_item_qtd(sprite,object,nome,val,func){
	var added = false
	for (var i = 0; i < ds_grid_width(global.inventory); i ++){
		for (var ii= 0; ii < ds_grid_width(global.inventory); ii ++){
			var slot = ds_grid_get(global.inventory,i,ii)
		
			if(slot != 0 and added = false){
				if(is_array(slot)){
					if(slot[1] == object){
						slot[4] += val 
						ds_grid_set(global.inventory,i,ii,slot)
						added = true
						break
					}
				}
			}
		}
		if(added){
			break
		}
	}
	if(!added){
	for (var i = 0; i < ds_grid_width(global.inventory); i ++){
		for (var ii= 0; ii < ds_grid_width(global.inventory); ii ++){
			var slot = ds_grid_get(global.inventory,i,ii)
			if(slot == 0 and added = false){
				ds_grid_set(global.inventory,i,ii,[sprite,object,nome,"qtd",val,func,object])
				added = true
				break
			}
		}
		if(added){
			break
		}
	}
	}
}
function decrease_item_qtd(sprite,object,nome,val,func){
	var added = false
	for (var i = 0; i < ds_grid_width(global.inventory); i ++){
		for (var ii= 0; ii < ds_grid_width(global.inventory); ii ++){
			var slot = ds_grid_get(global.inventory,i,ii)
		
			if(slot != 0 and added = false){
				if(is_array(slot)){
					if(slot[1] == object){
						slot[4] -= val 
						ds_grid_set(global.inventory,i,ii,slot)
						added = true
						break
					}
				}
			}
		}
		if(added){
			break
		}
	}
}
function add_item_qtd_esp(inventory, _inst, i, ii,i2,ii2, val, object) {
	var _slot = ds_grid_get(inventory, i, ii);
	if (_slot != 0) {
		if (is_array(_slot)) {
			if (_slot[1] == object) {
				_slot[4] += val;
				ds_grid_set(inventory, i, ii, _slot); 
				var _slot_remove = ds_grid_get(global.inventory,i2,ii2)
				_slot_remove[4]-=val 
				ds_grid_set(global.inventory,i2,ii2,_slot_remove)
			}
		}
	}else{
		_inst[4] = val 
		ds_grid_set(inventory, i, ii, _inst); 
		var _slot_remove = ds_grid_get(global.inventory,i2,ii2)
		if(is_array(_slot_remove)){
			if(_slot_remove[4] >1){
				_slot_remove[4]-=val 
			}else{
				_slot_remove = 0
			}
		}else{
			_slot_remove = 0
		}
		ds_grid_set(global.inventory,i2,ii2,_slot_remove)
	}
	
}
function array_copy_manual(_array) {
	var _length = array_length_1d(_array);
	var _copy = array_create(_length, 0);
	for (var i = 0; i < _length; i++) {
		_copy[i] = _array[i];
	}
	return _copy;
}


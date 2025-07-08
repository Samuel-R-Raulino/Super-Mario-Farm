if(life <=0){
	var _prob = random(100)
	if(_prob>85){
		var _inst = instance_create_layer(x+random(16),y+random(16),layer,choose(obj_seed,obj_mate))
		_inst.qtd = 1
	}
	instance_create_layer(x+random(16),y+random(16),layer,obj_worm)
	instance_destroy()
}
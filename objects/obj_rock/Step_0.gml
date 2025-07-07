if(life <=0){
	instance_create_layer(x+random(16),y+random(16),layer,obj_drop_rock)
	instance_destroy()
}
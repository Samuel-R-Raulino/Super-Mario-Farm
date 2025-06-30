function gun_sub_state(){
	if(gun_created==false){
		var gun = instance_create_layer(x,y,layer,obj_gun_farm)
		gun.player = self
		gun_created=true
	}
}
function kopa_transform(){
	sprite_index = spr_kopa_protection_transform
	instance_destroy(kopa_fusion)
	if(image_index = 2){
		instance_create_layer(x,y-10,layer,obj_kopa)
		instance_destroy()
	}
}
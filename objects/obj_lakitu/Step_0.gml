if(!die){
	x = cloud.x 
	y = cloud.y - dist_cloud

	// Primeiro define o sprite de ataque, se estiver perto do tempo
	if(alarm[0] >= 45){
		if(alarm[0]==45+35-1){
		var _spiny = instance_create_layer(x, y, layer, obj_spiny)
		_spiny.vspd -= 8;
		}
		sprite_index = spr_lakitu_attack
	}else{
		sprite_index = spr_lakitu
	}

	// Agora sim, verifica se é o momento exato e já está com o sprite certo
}else{
	sprite_index = spr_lakitu_die
	image_angle = 180
	vspd += 0.5
	y += vspd
}

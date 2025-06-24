script_execute(state)
if(star and start_star){
	start_star = false
	alarm[5] = 25
	var rainbow_colors = [
    c_red,
    make_color_rgb(255, 128, 0), // laranja
    c_yellow,
    c_green,
    c_blue,
    make_color_rgb(128, 0, 255) // roxo
];

var cor = choose(rainbow_colors[0], rainbow_colors[1], rainbow_colors[2], rainbow_colors[3], rainbow_colors[4], rainbow_colors[5]);
image_blend = cor;
}
if(star = false){
	start_star = true
	image_blend = c_white
}
if(place_meeting(x,y+1,obj_block)){
	if(global.coin>=1){global.coin=0}
}
if(alarm[6] == 30 or alarm[6] ==60 or alarm[6] ==87){
	image_alpha = 0
}else{
	image_alpha =1
}
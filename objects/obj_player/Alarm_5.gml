if (star_cont < 30 && start_star == false) {
	star_cont++;var rainbow_colors = [
    c_red,
    make_color_rgb(255, 128, 0), // laranja
    c_yellow,
    c_green,
    c_blue,
    make_color_rgb(128, 0, 255) // roxo
];

var cor = choose(rainbow_colors[0], rainbow_colors[1], rainbow_colors[2], rainbow_colors[3], rainbow_colors[4], rainbow_colors[5]);
image_blend = cor;
	show_debug_message(star_cont);
	alarm[5] = 25;
} else {
	start_star = true;
	star_cont = 0;
	star = false
}

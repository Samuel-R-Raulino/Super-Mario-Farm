function text_script(){
	var xx = argument0;
	var yy = argument1;
	var txt = argument2;
	var velocidade = 20; // Ex: 20 = 20 letras por segundo

	// Calcular quantas letras mostrar com base no tempo
	var tempo = current_time / 1000; // tempo em segundos
	var letras_para_mostrar = floor(tempo * velocidade);

	// Cortar o texto até a quantidade desejada
	var texto_parcial = string_copy(txt, 1, letras_para_mostrar);

	// Desenhar na tela
	draw_text(xx, yy, texto_parcial);
}	
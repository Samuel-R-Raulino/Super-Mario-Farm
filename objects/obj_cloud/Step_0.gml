// Distância horizontal entre os objetos
var dx = obj_player.x - x;

// Só persegue se estiver a mais de 10 pixels de distância
if (dx > 10 and dx < 80) {
    hspd = 2; // anda pra direita
} else if (dx < -10 and dx > -80) {
    hspd = -2; // anda pra esquerda
}else if (dx > 25) {
    hspd = obj_player.hspd  
} else if (dx < -25) {
    hspd = obj_player.hspd 
} else {
    hspd = 0; // parado se perto o suficiente
}

// Aplica o movimento
x += hspd;
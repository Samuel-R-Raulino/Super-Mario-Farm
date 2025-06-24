x = (player.x div 16)*16
if(player.state!=main){
	y = (player.y div 16)*16-16
}else{
	y = (player.y div 16)*16-3
}
show_debug_message((player.x div 16)*16)
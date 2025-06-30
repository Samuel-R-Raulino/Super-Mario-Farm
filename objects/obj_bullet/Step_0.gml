var spd = 5
if(dir = "horizontal"){
	hspd=spd*sign(xscale)
}
if(dir = "up"){
	vspd=-spd
}
if( dir = "down"){
	vspd=spd
}
x+=hspd
y+=vspd
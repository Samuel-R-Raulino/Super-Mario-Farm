if(run and !air and state !=fly_normal)
{
	
	jspd = -8.15
	spd+=1 
	time++
	if(spd >= 5 and time <7){
		spd=5 
		run_animation = false
	}else if(time >= 7){
		spd = 6
		run_animation = true
	}
}

alarm[0] = 45/2
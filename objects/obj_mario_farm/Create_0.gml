maconha = false
hspd = 0
vspd = 0
spd = 3
dir = "down"
state = main_farm
last_state = noone
inv = instance_create_layer(x,y,layer,obj_inv)
inv._i = 0
inv.player = self
gun_image = noone
gun_xscale = 1
gun_created = false
substate = noone
changed = true
stop = false
adubo = 0
open_plant = false
_plant = instance_nearest(x, y, obj_plant_debug);
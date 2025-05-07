#Display Particle
particle dust{color:[0.0, 0.7882, 1.0],scale:1.5f} ~ ~ ~ 5 0.05 5 0.1 100 normal
particle sweep_attack ~ ~ ~ 5 0.05 5 0.1 15 force

#Playsound
playsound entity.allay.item_taken master @a[distance=..32] ~ ~ ~ 1 0.8 1

#Gather Items
execute as @e[type=item,distance=..12] run function mob_gem:mob_gem/allay/pickup_item/2_magnetize
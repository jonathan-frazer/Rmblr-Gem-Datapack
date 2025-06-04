data modify storage mob_gem:auxillary Wolf.Companion set from entity @s UUID

#Particle & Sound
execute at @s anchored eyes positioned ^ ^ ^0.1 run particle heart ~ ~ ~ 0.1 0.1 0.1 0.001 5 force
execute positioned as @s run playsound entity.wolf.whine master @a[distance=..12] ~ ~ ~ 1 1 1
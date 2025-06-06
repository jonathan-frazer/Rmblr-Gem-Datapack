#Uncouple Companion
data remove storage mob_gem:auxillary Wolf.Companion

#Particle & Sound
execute at @s anchored eyes positioned ^ ^ ^0.1 run particle smoke ~ ~ ~ 0.1 0.1 0.1 0.001 5 force
execute positioned as @s run playsound entity.wolf.growl master @a[distance=..12] ~ ~ ~ 1 1 1

#
tellraw @s {"text":"Uncoupled Companion","color": "#dbd8c7"}
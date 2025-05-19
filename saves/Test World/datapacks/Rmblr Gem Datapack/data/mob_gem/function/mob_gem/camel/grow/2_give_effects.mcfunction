#Slowness
effect give @s slowness 1 0 true

#Resistance
effect give @s resistance 1 1 false

#Weakness
execute as @e[type=!#mob_gem:nalive,distance=0.5..5,type=!player] run effect give @s weakness 1 2 true
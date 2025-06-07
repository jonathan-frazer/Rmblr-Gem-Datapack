#Blow Dragon Breath
execute if block ^ ^ ^0.31 #mob_gem:passable run tp @s ^ ^ ^0.3
particle electric_spark ~ ~0.5 ~ 0.1 0.1 0.1 0.001 1 force
particle dust{color:[0.882,0.000,1.000],scale:1} ~ ~0.5 ~ 0.3 0.3 0.3 0.001 5 force

#Damage Enemys
execute as @e[type=!#mob_gem:nalive,distance=..3,predicate=!mob_gem:ender_dragon_gem/has_item] run damage @s 6.0 indirect_magic
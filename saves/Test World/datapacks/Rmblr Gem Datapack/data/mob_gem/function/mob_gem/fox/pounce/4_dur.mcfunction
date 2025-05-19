#Duration
scoreboard players add @s mbGem_foxPounce 1

#Prevent Mobs from attacking
execute as @e[type=!#mob_gem:nalive,distance=..3.5,type=!player] run effect give @s weakness 1 10 true

#Start Falling
execute if score @s mbGem_foxPounce matches 5 run effect clear @s levitation

#Toward
execute facing entity @n[type=!#mob_gem:nalive,tag=mbGemFoxPounceTarget] feet rotated ~ 0 run tp @s ^ ^ ^0.5
execute at @s run tp @s ~ ~ ~ facing entity @n[type=!#mob_gem:nalive,tag=mbGemFoxPounceTarget]
execute if score @s mbGem_foxPounce matches 5.. as @n[type=!#mob_gem:nalive,tag=mbGemFoxPounceTarget,distance=..1.5] run function mob_gem:mob_gem/fox/pounce/5_atk

execute if score @s mbGem_foxPounce matches 30.. run function mob_gem:mob_gem/fox/pounce/end
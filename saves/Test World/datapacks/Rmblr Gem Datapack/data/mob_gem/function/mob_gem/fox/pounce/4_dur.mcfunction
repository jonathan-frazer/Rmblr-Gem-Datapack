#Duration
scoreboard players add @s mbGem_foxPounce 1

#Prevent Mobs from attacking
execute as @e[type=!#mob_gem:nalive,distance=..3.5,type=!player] run effect give @s weakness 1 10 true

#Start Falling
execute if score @s mbGem_foxPounce matches 5 run effect clear @s levitation

#Toward
execute unless entity @n[type=!#mob_gem:nalive,distance=..64,tag=mbGemFoxPounceTarget,dx=1,dz=1,dy=-20] facing entity @n[type=!#mob_gem:nalive,tag=mbGemFoxPounceTarget,distance=..64] feet rotated ~ 0 run tp @s ^ ^ ^0.5
execute unless entity @n[type=!#mob_gem:nalive,distance=..64,tag=mbGemFoxPounceTarget,dx=1,dz=1,dy=-20] at @s run tp @s ~ ~ ~ facing entity @n[type=!#mob_gem:nalive,tag=mbGemFoxPounceTarget,distance=..64]
execute if score @s mbGem_foxPounce matches 5.. as @n[type=!#mob_gem:nalive,tag=mbGemFoxPounceTarget,distance=..1.5] run function mob_gem:mob_gem/fox/pounce/5_atk

#Particle
particle dust{color:[0.99f, 0.56f, 0.01f],scale:1.0f} ~ ~0.65 ~ 0.25 0.4 0.25 0.001 10 normal @a[distance=..32]
particle crit ~ ~0.65 ~ 0.25 0.4 0.25 0.001 1 force @a[distance=..32]

execute if score @s mbGem_foxPounce matches 50.. run function mob_gem:mob_gem/fox/pounce/end
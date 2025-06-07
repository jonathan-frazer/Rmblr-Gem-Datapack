#Attack
execute at @s run function mob_gem:mob_gem/magma_cube/stomp/4_dmg with storage mob_gem:auxillary MagmaCube

#Clear Tags
tag @s remove mbGemMagmaStomp
scoreboard players set @s mbGemClearMagma 1

#Land Particle
particle flame ~ ~-1 ~ 1.00 0.55 1.00 0.005 25 force
particle flame ~ ~-1 ~ 1.00 0.55 1.00 0.005 75 normal
playsound item.firecharge.use master @a[distance=..12] ~ ~ ~ 1 1.1 1

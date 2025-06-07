#If any Mobs are around Damage them
execute store result score magmaFall mbGem_fakePlayer run data get entity @s FallDistance 1.0
#Limit Upto 255
execute if score magmaFall mbGem_fakePlayer matches 255.. run scoreboard players set magmaFall mbGem_fakePlayer 255
#Store into Object
execute store result storage mob_gem:auxillary MagmaCube.fallDistance int 1.0 run scoreboard players get magmaFall mbGem_fakePlayer
execute store result storage mob_gem:auxillary MagmaCube.stompDmg double 1.25 run scoreboard players get magmaFall mbGem_fakePlayer

#If falling
execute if score magmaFall mbGem_fakePlayer matches 4..255 run function mob_gem:mob_gem/magma_cube/stomp/3_land
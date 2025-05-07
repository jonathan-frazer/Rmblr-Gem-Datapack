scoreboard players add @s mbGem_fakePlayer 1

execute if score @s mbGem_fakePlayer matches 1 run function mob_gem:mob_gem/strider/lava_spawn/4_lava_place

#Cleanup
execute if score @s mbGem_fakePlayer matches 79 run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air replace lava
scoreboard players reset @s mbGem_Click

#Set 10 Sec Cooldown
scoreboard players set @s mbGem_AbilityCooldown 10

#Spawn Lava Around all nearby Players
execute at @s run function mob_gem:mob_gem/strider/lava_spawn/1_lava_spawn
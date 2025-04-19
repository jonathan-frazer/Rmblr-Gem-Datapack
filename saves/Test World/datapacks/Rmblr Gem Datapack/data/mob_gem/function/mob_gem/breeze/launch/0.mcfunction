#Reset Score
scoreboard players reset @s mbGem_Click

#Move
execute rotated ~ 0 run function mob_gem:mob_gem/breeze/launch/1_spawn_windcharge

#Cooldown
scoreboard players set @s mbGem_AbilityCooldown 7
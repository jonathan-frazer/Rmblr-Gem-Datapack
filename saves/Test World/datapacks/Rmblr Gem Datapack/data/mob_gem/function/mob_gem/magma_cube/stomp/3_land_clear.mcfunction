scoreboard players add @s mbGemClearMagma 1

execute if score @s mbGemClearMagma matches 15.. run attribute @s generic.fall_damage_multiplier modifier remove mob_gem:magma_cube_falldmg
execute if score @s mbGemClearMagma matches 15.. run scoreboard players reset @s mbGemClearMagma
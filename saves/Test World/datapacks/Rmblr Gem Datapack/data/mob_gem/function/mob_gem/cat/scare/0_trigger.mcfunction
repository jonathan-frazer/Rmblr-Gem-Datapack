#Cooldown
scoreboard players set @s[predicate=!mob_gem:having_dragon_egg] mbGem_AbilityCooldown 20
scoreboard players set @s[predicate=mob_gem:having_dragon_egg] mbGem_AbilityCooldown 10
title @s[scores={mbGem_AbilityCooldown=1..}] actionbar [{"color":"#ca9140","text":"Cooldown: "},{"color":"#1BD01B","score":{"name":"@s","objective":"mbGem_AbilityCooldown"}},{"color":"#1bd01b","text":"s"}]

#Playsound
playsound entity.cat.hiss master @a[distance=..8] ~ ~ ~ 1 0.9 1

#Find Targets
execute at @s anchored eyes positioned ^ ^ ^2 as @e[type=!#mob_gem:nalive,distance=..4,predicate=!mob_gem:cat_gem/holding_item] at @s run function mob_gem:mob_gem/cat/scare/1_scare
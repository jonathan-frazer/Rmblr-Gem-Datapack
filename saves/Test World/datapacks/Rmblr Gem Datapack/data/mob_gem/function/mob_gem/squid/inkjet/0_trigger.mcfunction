#Cooldown
scoreboard players set @s[predicate=!mob_gem:having_dragon_egg] mbGem_AbilityCooldown 7
scoreboard players set @s[predicate=mob_gem:having_dragon_egg] mbGem_AbilityCooldown 4
title @s[scores={mbGem_AbilityCooldown=1..}] actionbar [{"color":"#ca9140","text":"Cooldown: "},{"color":"#1BD01B","score":{"name":"@s","objective":"mbGem_AbilityCooldown"}},{"color":"#1bd01b","text":"s"}]

#Blast
execute positioned ^ ^ ^2 run function mob_gem:mob_gem/squid/inkjet/1_ink_blast
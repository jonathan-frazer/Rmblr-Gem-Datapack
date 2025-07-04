#Sound
playsound entity.fox.aggro master @a[distance=..12] ~ ~ ~ 1 0.85 1

#Cooldown
scoreboard players set @s[predicate=!mob_gem:having_dragon_egg] mbGem_AbilityCooldown 20
scoreboard players set @s[predicate=mob_gem:having_dragon_egg] mbGem_AbilityCooldown 11
title @s[scores={mbGem_AbilityCooldown=1..}] actionbar [{"color":"#ca9140","text":"Cooldown: "},{"color":"#1BD01B","score":{"name":"@s","objective":"mbGem_AbilityCooldown"}},{"color":"#1bd01b","text":"s"}]

#Jump
effect give @s levitation 1 21 true
attribute @s generic.gravity modifier add mob_gem:pounce_gravity -0.5 add_multiplied_base
attribute @s generic.fall_damage_multiplier modifier add mob_gem:pounce_fall -1.0 add_multiplied_base

#Disable your own attacks
execute store result storage mob_gem:auxillary Fox.dmg float 1.0 run attribute @s generic.attack_damage get 1.0 
attribute @s generic.attack_damage modifier add mob_gem:fox_dmg -1.0 add_multiplied_base 

#Trigger Pounce
scoreboard players set @s mbGem_foxPounce 1
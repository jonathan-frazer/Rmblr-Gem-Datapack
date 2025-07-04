#Enchants with Frost Walker
item modify entity @s armor.feet mob_gem:polar_bear/frost_enchant

#Particle
particle soul_fire_flame ~ ~0.1 ~ 0.125 0.01 0.125 0.001 5 normal
particle soul_fire_flame ~ ~0.1 ~ 0.125 0.01 0.125 0.001 1 force
particle block{block_state:"snow"} ~ ~0.1 ~ 0.125 0.01 0.125 0.001 2 force
particle block{block_state:"snow"} ~ ~0.1 ~ 0.125 0.01 0.125 0.001 10 normal

#Playsound
playsound entity.polar_bear.warning master @a[distance=..12] ~ ~ ~ 0.75 0.95 1

#Cooldown
scoreboard players set @s[predicate=!mob_gem:having_dragon_egg] mbGem_AbilityCooldown 10
scoreboard players set @s[predicate=mob_gem:having_dragon_egg] mbGem_AbilityCooldown 5
title @s[scores={mbGem_AbilityCooldown=1..}] actionbar [{"color":"#ca9140","text":"Cooldown: "},{"color":"#1BD01B","score":{"name":"@s","objective":"mbGem_AbilityCooldown"}},{"color":"#1bd01b","text":"s"}]

tag @s add mbFrostWalkerAdd
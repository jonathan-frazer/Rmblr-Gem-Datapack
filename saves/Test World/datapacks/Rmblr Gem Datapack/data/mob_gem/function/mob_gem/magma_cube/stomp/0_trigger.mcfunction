#Cooldown
scoreboard players set @s[predicate=!mob_gem:having_dragon_egg] mbGem_AbilityCooldown 12
scoreboard players set @s[predicate=mob_gem:having_dragon_egg] mbGem_AbilityCooldown 6
title @s[scores={mbGem_AbilityCooldown=1..}] actionbar [{"color":"#ca9140","text":"Cooldown: "},{"color":"#1BD01B","score":{"name":"@s","objective":"mbGem_AbilityCooldown"}},{"color":"#1bd01b","text":"s"}]

#Sound
playsound entity.magma_cube.jump master @a[distance=..12] ~ ~ ~ 1 1.1 1
particle block{block_state:"minecraft:magma_block"} ~ ~ ~ 0.25 0.25 0.25 0.005 10 normal

#Stomp
effect give @s levitation 1 23 true

#Negate Fall Damage
attribute @s generic.fall_damage_multiplier modifier add mob_gem:magma_cube_falldmg -1.0 add_multiplied_base

#Stomp Tag
tag @s add mbGemMagmaStomp
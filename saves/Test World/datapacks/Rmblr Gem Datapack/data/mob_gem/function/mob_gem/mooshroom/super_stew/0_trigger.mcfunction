#Cooldown of 60 seconds
scoreboard players set @s[predicate=!mob_gem:having_dragon_egg] mbGem_AbilityCooldown 60
scoreboard players set @s[predicate=mob_gem:having_dragon_egg] mbGem_AbilityCooldown 30
title @s[scores={mbGem_AbilityCooldown=1..}] actionbar [{"color":"#ca9140","text":"Cooldown: "},{"color":"#1BD01B","score":{"name":"@s","objective":"mbGem_AbilityCooldown"}},{"color":"#1bd01b","text":"s"}]

#Super Stew
give @s suspicious_stew[custom_name='{"color":"#FF0000","text":"Super Stew"}',enchantment_glint_override=true,suspicious_stew_effects=[{id:"minecraft:absorption",duration:600},{id:"minecraft:haste",duration:600},{id:"minecraft:speed",duration:600},{id:"minecraft:jump_boost",duration:600},{id:"minecraft:regeneration",duration:600}]] 1
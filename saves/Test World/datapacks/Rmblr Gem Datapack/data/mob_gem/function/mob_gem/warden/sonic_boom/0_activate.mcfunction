#Set Score
scoreboard players set @s mbGemSonicBoom 1
#Apply Cooldown
scoreboard players set @s[predicate=!mob_gem:having_dragon_egg] mbGem_AbilityCooldown 20
scoreboard players set @s[predicate=mob_gem:having_dragon_egg] mbGem_AbilityCooldown 11
title @s[scores={mbGem_AbilityCooldown=1..}] actionbar [{"color":"#ca9140","text":"Cooldown: "},{"color":"#1BD01B","score":{"name":"@s","objective":"mbGem_AbilityCooldown"}},{"color":"#1bd01b","text":"s"}]

#Playsound
execute at @s run playsound block.beacon.activate master @a[distance=..32] ^ ^0.75 ^1 0.75 2 0.75

#Put on Slowness
attribute @s minecraft:generic.movement_speed modifier add mob_gem:warden_slow -1.0 add_value
attribute @s minecraft:generic.gravity modifier add mob_gem:warden_lock -1.0 add_multiplied_base

#Lock in place
summon area_effect_cloud ~ ~ ~ {CustomName:'"mbGemBoomLock"',Duration:40}
tp @n[type=area_effect_cloud,name="mbGemBoomLock"] @s

#Clear Actionbar
tellraw @s [{"text":"Sonic","color":"dark_aqua"}]

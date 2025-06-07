#Cooldown
scoreboard players set @s[predicate=!mob_gem:having_dragon_egg] mbGem_AbilityCooldown 4
scoreboard players set @s[predicate=mob_gem:having_dragon_egg] mbGem_AbilityCooldown 2
title @s[scores={mbGem_AbilityCooldown=1..}] actionbar [{"color":"#ca9140","text":"Cooldown: "},{"color":"#1BD01B","score":{"name":"@s","objective":"mbGem_AbilityCooldown"}},{"color":"#1bd01b","text":"s"}]

#Remove Gravity
attribute @s generic.gravity modifier add mob_gem:sniffer_dig_gravity -1.0 add_multiplied_base
attribute @s generic.movement_speed modifier add mob_gem:sniffer_dig_speed -1.0 add_multiplied_base
attribute @s generic.knockback_resistance modifier add mob_gem:sniffer_dig_kb_res 1.0 add_value

#Burrowing
scoreboard players set @s mbGem_snifferBurrow 1

execute at @s rotated ~ 0 run summon armor_stand ^ ^2 ^12 {CustomName:'{"text":"sniffBurrowLocation"}',Motion:[0.0,-4.0,0.0],Invisible:1b}
execute at @n[type=armor_stand,name=sniffBurrowLocation,distance=..70] run tp @n[type=armor_stand,distance=..1,name=sniffBurrowLocation] ~ ~ ~ ~ ~

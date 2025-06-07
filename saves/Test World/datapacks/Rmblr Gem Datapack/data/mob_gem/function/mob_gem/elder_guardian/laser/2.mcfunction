scoreboard players set raycast mbGem_fakePlayer -1

#Cooldown
scoreboard players set @s[predicate=!mob_gem:having_dragon_egg] mbGem_AbilityCooldown 15
scoreboard players set @s[predicate=mob_gem:having_dragon_egg] mbGem_AbilityCooldown 10
title @s[scores={mbGem_AbilityCooldown=1..}] actionbar [{"color":"#ca9140","text":"Cooldown: "},{"color":"#1BD01B","score":{"name":"@s","objective":"mbGem_AbilityCooldown"}},{"color":"#1bd01b","text":"s"}]
execute at @s run playsound block.beacon.activate master @a[distance=..12] ~ ~ ~ 1 1.5 1

#Laser Tag
execute as @n[type=!#mob_gem:nalive,predicate=!mob_gem:elder_guardian_gem/holding_item,distance=..2] run function mob_gem:mob_gem/elder_guardian/laser/3
#Cooldown
scoreboard players set @s[predicate=!mob_gem:having_dragon_egg] mbGem_AbilityCooldown 6
scoreboard players set @s[predicate=mob_gem:having_dragon_egg] mbGem_AbilityCooldown 3
title @s[scores={mbGem_AbilityCooldown=1..}] actionbar [{"color":"#ca9140","text":"Cooldown: "},{"color":"#1BD01B","score":{"name":"@s","objective":"mbGem_AbilityCooldown"}},{"color":"#1bd01b","text":"s"}]

#Playsound
playsound entity.bat.ambient master @a[distance=..12] ~ ~ ~ 1 1.1 1
playsound entity.bat.ambient master @a[distance=..12] ~ ~ ~ 1 1.1 1
playsound entity.bat.ambient master @a[distance=..12] ~ ~ ~ 1 1.1 1
playsound entity.bat.ambient master @a[distance=..12] ~ ~ ~ 1 1.1 1
playsound entity.bat.ambient master @a[distance=..12] ~ ~ ~ 1 1.1 1

#Echolocate
effect give @e[type=!#mob_gem:nalive,distance=0.4..32] glowing 2 1 true
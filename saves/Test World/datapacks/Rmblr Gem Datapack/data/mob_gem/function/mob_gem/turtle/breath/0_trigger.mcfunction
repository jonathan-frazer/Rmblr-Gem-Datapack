#Speed for emphasis
effect give @s speed 1 2 true

#Breath
playsound entity.player.breath master @a[distance=..12] ~ ~ ~ 1 1 1
effect give @s water_breathing 30 2 false

#Cooldown 35 sec
scoreboard players set @s[predicate=!mob_gem:having_dragon_egg] mbGem_AbilityCooldown 35
scoreboard players set @s[predicate=mob_gem:having_dragon_egg] mbGem_AbilityCooldown 32
title @s[scores={mbGem_AbilityCooldown=1..}] actionbar [{"color":"#ca9140","text":"Cooldown: "},{"color":"#1BD01B","score":{"name":"@s","objective":"mbGem_AbilityCooldown"}},{"color":"#1bd01b","text":"s"}]
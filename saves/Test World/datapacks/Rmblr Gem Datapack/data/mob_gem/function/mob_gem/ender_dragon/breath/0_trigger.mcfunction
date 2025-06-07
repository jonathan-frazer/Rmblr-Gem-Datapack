#Cooldown
scoreboard players set @s[predicate=!mob_gem:having_dragon_egg] mbGem_AbilityCooldown 12
scoreboard players set @s[predicate=mob_gem:having_dragon_egg] mbGem_AbilityCooldown 7
title @s[scores={mbGem_AbilityCooldown=1..}] actionbar [{"color":"#ca9140","text":"Cooldown: "},{"color":"#1BD01B","score":{"name":"@s","objective":"mbGem_AbilityCooldown"}},{"color":"#1bd01b","text":"s"}]

#Activate Dragon Breath
scoreboard players set @s mbGemDragonBreath 1
execute at @s run playsound entity.ender_dragon.growl master @a[distance=..12] ~ ~ ~ 1 1 1
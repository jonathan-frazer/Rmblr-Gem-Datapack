#Cooldown
scoreboard players set @s[predicate=!mob_gem:having_dragon_egg] mbGem_AbilityCooldown 3
scoreboard players set @s[predicate=mob_gem:having_dragon_egg] mbGem_AbilityCooldown 1
title @s[scores={mbGem_AbilityCooldown=1..}] actionbar [{"color":"#ca9140","text":"Cooldown: "},{"color":"#1BD01B","score":{"name":"@s","objective":"mbGem_AbilityCooldown"}},{"color":"#1bd01b","text":"s"}]

#Enable Roll
scoreboard players set @s mbGemPandaRoll 1
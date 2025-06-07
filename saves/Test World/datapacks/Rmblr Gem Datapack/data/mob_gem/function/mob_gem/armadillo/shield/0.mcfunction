scoreboard players reset @s mbGem_Click

#Begin
scoreboard players set @s mbGemArmadilloShield 1

#Set 20sec Cooldown
scoreboard players set @s[predicate=!mob_gem:having_dragon_egg] mbGem_AbilityCooldown 30
scoreboard players set @s[predicate=mob_gem:having_dragon_egg] mbGem_AbilityCooldown 20
title @s[scores={mbGem_AbilityCooldown=1..}] actionbar [{"color":"#ca9140","text":"Cooldown: "},{"color":"#1BD01B","score":{"name":"@s","objective":"mbGem_AbilityCooldown"}},{"color":"#1bd01b","text":"s"}]
#Trigger
scoreboard players set @s[predicate=!mob_gem:having_dragon_egg] mbGem_AbilityCooldown 40
scoreboard players set @s[predicate=mob_gem:having_dragon_egg] mbGem_AbilityCooldown 30
title @s[scores={mbGem_AbilityCooldown=1..}] actionbar [{"color":"#ca9140","text":"Cooldown: "},{"color":"#1BD01B","score":{"name":"@s","objective":"mbGem_AbilityCooldown"}},{"color":"#1bd01b","text":"s"}]

#Activate Shrink
scoreboard players set @s mbGemShrinkSilver 1
tag @s add mbGemSilverforward

#Silverfish Sound
playsound entity.silverfish.step master @a[distance=..12] ~ ~ ~ 1 1 1
#Trigger
scoreboard players set @s[predicate=!mob_gem:having_dragon_egg] mbGem_AbilityCooldown 20
scoreboard players set @s[predicate=mob_gem:having_dragon_egg] mbGem_AbilityCooldown 15
title @s[scores={mbGem_AbilityCooldown=1..}] actionbar [{"color":"#ca9140","text":"Cooldown: "},{"color":"#1BD01B","score":{"name":"@s","objective":"mbGem_AbilityCooldown"}},{"color":"#1bd01b","text":"s"}]

#Activate Shrink
scoreboard players set @s mbGemShrinkEnder 1
tag @s add mbGemEnderforward

#Endermite Sound
playsound entity.endermite.step master @a[distance=..12] ~ ~ ~ 1 1 1
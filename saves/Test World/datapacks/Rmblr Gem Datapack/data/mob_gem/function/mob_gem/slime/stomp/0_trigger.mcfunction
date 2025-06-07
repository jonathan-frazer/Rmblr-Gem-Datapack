#Cooldown
scoreboard players set @s[predicate=!mob_gem:having_dragon_egg] mbGem_AbilityCooldown 10
scoreboard players set @s[predicate=mob_gem:having_dragon_egg] mbGem_AbilityCooldown 6
title @s[scores={mbGem_AbilityCooldown=1..}] actionbar [{"color":"#ca9140","text":"Cooldown: "},{"color":"#1BD01B","score":{"name":"@s","objective":"mbGem_AbilityCooldown"}},{"color":"#1bd01b","text":"s"}]

#Sound
playsound entity.slime.attack master @a[distance=..12] ~ ~ ~ 1 1.1 1
particle item_slime ~ ~ ~ 0.25 0.25 0.25 0.005 10 normal

#Stomp
effect give @s levitation 1 23 true

#Stomp Tag
tag @s add mbGemSlimeStomp
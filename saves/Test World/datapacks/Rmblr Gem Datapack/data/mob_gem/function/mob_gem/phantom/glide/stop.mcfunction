#Cooldown
scoreboard players set @s[predicate=!mob_gem:having_dragon_egg] mbGem_AbilityCooldown 20
scoreboard players set @s[predicate=mob_gem:having_dragon_egg] mbGem_AbilityCooldown 10
title @s[scores={mbGem_AbilityCooldown=1..}] actionbar [{"color":"#ca9140","text":"Cooldown: "},{"color":"#1BD01B","score":{"name":"@s","objective":"mbGem_AbilityCooldown"}},{"color":"#1bd01b","text":"s"}]

#Remove Tag
tag @s remove mbGemPhantomGlide
#Add Attributes
attribute @s generic.gravity modifier remove mob_gem:phantom_gravity
tag @s add mbGemPhantomSched
schedule function mob_gem:mob_gem/phantom/glide/end/0 1s
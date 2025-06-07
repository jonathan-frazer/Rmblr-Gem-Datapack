#Cooldown
scoreboard players set @s mbGem_AbilityCooldown 100
title @s[scores={mbGem_AbilityCooldown=1..}] actionbar [{"color":"#ca9140","text":"Cooldown: "},{"color":"#1BD01B","score":{"name":"@s","objective":"mbGem_AbilityCooldown"}},{"color":"#1bd01b","text":"s"}]

#Add Tag
tag @s add mbGemPhantomGlide


#Start Flight
    #Reset Momentum
    tp @s @s
    #Remove Gravity
    attribute @s generic.gravity modifier add mob_gem:phantom_gravity -1.0 add_multiplied_base
    attribute @s generic.fall_damage_multiplier modifier add mob_gem:phantom_fall -1.0 add_multiplied_base

#Reset Click
scoreboard players reset @s mbGem_Click
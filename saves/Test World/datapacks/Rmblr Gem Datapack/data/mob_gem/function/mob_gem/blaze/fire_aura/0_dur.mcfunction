#If Mob is Around then Flare
execute at @s if entity @n[type=#mob_gem:hostile,predicate=!mob_gem:blaze_gem/has_item,distance=..3] run function mob_gem:mob_gem/blaze/fire_aura/1_flare
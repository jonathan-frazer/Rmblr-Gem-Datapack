#Particle
scoreboard players set mbGemfrogTongue mbGem_fakePlayer 0
execute at @s anchored eyes facing entity @p[predicate=mob_gem:frog_gem/holding_item] eyes run function mob_gem:mob_gem/frog/tongue/2r

#Sound
playsound entity.frog.tongue master @a[distance=..12] ~ ~ ~ 1 0.8 1

#Tag
tag @s add mbGemFrogTarget
tag @p[predicate=mob_gem:frog_gem/holding_item] add mbGemFrogTongue

#Prevent attacks
effect give @s weakness 1 17 true

#Cooldown
scoreboard players set @p[predicate=mob_gem:frog_gem/holding_item,predicate=!mob_gem:having_dragon_egg] mbGem_AbilityCooldown 20
scoreboard players set @p[predicate=mob_gem:frog_gem/holding_item,predicate=mob_gem:having_dragon_egg] mbGem_AbilityCooldown 10
title @p[predicate=mob_gem:frog_gem/holding_item,scores={mbGem_AbilityCooldown=1..}] actionbar [{"color":"#ca9140","text":"Cooldown: "},{"color":"#1BD01B","score":{"name":"@s","objective":"mbGem_AbilityCooldown"}},{"color":"#1bd01b","text":"s"}]
#Move toward
scoreboard players add @s mbGemFrogpull 1
tp @s ^ ^ ^0.5 facing entity @p[tag=mbGemFrogTongue] feet

#Particle
scoreboard players set mbGemfrogTongue mbGem_fakePlayer 0
execute at @s anchored eyes facing entity @p[predicate=mob_gem:frog_gem/holding_item] eyes run function mob_gem:mob_gem/frog/tongue/2r

execute if entity @p[tag=mbGemFrogTongue,distance=..0.5] run function mob_gem:mob_gem/frog/tongue/4_disappear

execute if score @s mbGemFrogpull matches 20.. run function mob_gem:mob_gem/frog/tongue/cancel_pull
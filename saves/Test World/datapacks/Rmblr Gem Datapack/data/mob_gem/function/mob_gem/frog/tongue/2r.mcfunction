scoreboard players add mbGemfrogTongue mbGem_fakePlayer 1

#Dust
particle dust{color:[0.851f,0.247f,0.690f],scale:1.75} ~ ~1 ~ 0.0 0.0 0.0 1 1 force

#Stop if hits a player
execute as @e[type=!#mob_gem:nalive,distance=..10,predicate=!mob_gem:frog_gem/holding_item] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run scoreboard players set mbGemfrogTongue mbGem_fakePlayer 0 

execute if score mbGemfrogTongue mbGem_fakePlayer matches 1..20 if block ^ ^ ^0.55 #mob_gem:passable positioned ^ ^ ^0.5 run function mob_gem:mob_gem/frog/tongue/2r
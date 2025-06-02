scoreboard players add raycast mbGem_fakePlayer 1

execute if entity @n[type=!#mob_gem:nalive,predicate=!mob_gem:elder_guardian_gem/holding_item,distance=..2] run function mob_gem:mob_gem/elder_guardian/laser/2

execute if score raycast mbGem_fakePlayer matches 1..20 if block ^ ^ ^0.80 #mob_gem:passable positioned ^ ^ ^0.75 run function mob_gem:mob_gem/elder_guardian/laser/1r
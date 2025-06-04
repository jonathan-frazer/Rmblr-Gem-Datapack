scoreboard players add wolfCompanionRay mbGem_fakePlayer 1

execute if entity @n[type=!#mob_gem:nalive,predicate=!mob_gem:wolf_gem/holding_item,distance=..2.5] run function mob_gem:mob_gem/wolf/companionship/2

execute if score wolfCompanionRay mbGem_fakePlayer matches 1..8 if block ^ ^ ^0.85 #mob_gem:passable positioned ^ ^ ^0.75 run function mob_gem:mob_gem/wolf/companionship/1r
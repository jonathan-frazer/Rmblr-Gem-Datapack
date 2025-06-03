scoreboard players add goatRamRay mbGem_fakePlayer 1

execute if entity @n[type=!#mob_gem:nalive,predicate=!mob_gem:goat_gem/holding_item,distance=..2.5] run function mob_gem:mob_gem/goat/ram/2

execute if score goatRamRay mbGem_fakePlayer matches 1..20 if block ^ ^ ^0.85 #mob_gem:passable positioned ^ ^ ^0.75 run function mob_gem:mob_gem/goat/ram/1r
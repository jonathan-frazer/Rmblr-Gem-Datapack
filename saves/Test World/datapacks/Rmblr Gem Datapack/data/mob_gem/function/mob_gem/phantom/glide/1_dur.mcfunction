#Glide ability
execute rotated ~ 0 if block ^ ^1 ^0.3 #mob_gem:passable run tp @s ^ ^-0.06 ^0.2

#Stop if Clicked
execute if predicate mob_gem:phantom_gem/holding_item if score @s mbGem_Click matches 1..3 run function mob_gem:mob_gem/phantom/glide/stop
#Stop if Block in front of you
execute anchored eyes unless block ^ ^ ^0.3 #mob_gem:passable run function mob_gem:mob_gem/phantom/glide/stop
#Stop if you no longer have gem with you
execute unless predicate mob_gem:phantom_gem/has_item run function mob_gem:mob_gem/phantom/glide/stop
#Stop On Ground
execute unless block ~ ~-0.5 ~ #mob_gem:passable run function mob_gem:mob_gem/phantom/glide/stop
#Stop If longer than 100s
execute if score @s mbGem_AbilityCooldown matches 0 run function mob_gem:mob_gem/phantom/glide/stop

#Particle effects
execute anchored eyes positioned ^ ^ ^-0.1 run function mob_gem:mob_gem/phantom/glide/2_fx
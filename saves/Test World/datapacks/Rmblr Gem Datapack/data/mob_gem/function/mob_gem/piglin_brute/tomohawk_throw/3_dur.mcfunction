#Increase Timer
scoreboard players add @s mbGem_fakePlayer 1

#Spin Animation
execute at @s rotated ~90 ~-0.05 positioned ^ ^ ^0.20 if block ~ ~1 ~ #mob_gem:passable run function mob_gem:mob_gem/piglin_brute/tomohawk_throw/4_spin_animation

#Effects
execute at @s as @e[distance=..2,predicate=!mob_gem:piglin_brute_gem/holding_item] run function mob_gem:mob_gem/piglin_brute/tomohawk_throw/5_fx

#Kill Once out for Five Seconds
kill @s[scores={mbGem_fakePlayer=80..}]
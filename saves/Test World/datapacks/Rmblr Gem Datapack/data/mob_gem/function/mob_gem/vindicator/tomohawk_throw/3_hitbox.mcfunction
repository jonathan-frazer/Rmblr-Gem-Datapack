#Particle
particle crit ~ ~ ~ 0 0 0 0.01 1 force

#Damage
execute as @e[type=!#mob_gem:nalive,distance=..2,predicate=!mob_gem:vindicator_gem/has_item] run damage @s 5.0 player_attack by @p[predicate=mob_gem:vindicator_gem/has_item]
#Bestow Conduit Power
execute if block ^ ^ ^0.1 water run effect give @s conduit_power 60 0 true
execute unless block ^ ^ ^0.1 water run effect clear @s[predicate=mob_gem:tropical_fish_gem/conduit_effect] conduit_power
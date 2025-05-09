#Night Vision
execute if block ^ ^ ^0.1 water run effect give @s night_vision 60 2 true
execute unless block ^ ^ ^0.1 water run effect clear @s[predicate=mob_gem:cod_gem/vision_effect] night_vision
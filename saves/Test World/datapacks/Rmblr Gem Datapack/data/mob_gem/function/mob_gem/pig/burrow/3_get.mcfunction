#Carrot
execute if predicate mob_gem:pig_gem/gold_chance run tag @s add mbGemGoldenCarrot

execute store result storage mob_gem:auxillary pig.carrot_count int 1 run random value 1..4
execute store result storage mob_gem:auxillary pig.gold_carrot_count int 1 run random value 1..2

#Get Carrots
execute as @s[tag=!mbGemGoldenCarrot] run function mob_gem:mob_gem/pig/burrow/4_carrot with storage mob_gem:auxillary pig
execute as @s[tag=mbGemGoldenCarrot] run function mob_gem:mob_gem/pig/burrow/5_gold_carrot with storage mob_gem:auxillary pig

tag @s remove mbGemGoldenCarrot
scoreboard players add @s mbGemScareTimer 1

#Follow Cat
tp @s @n[type=cat,name="mbGemCatScare"]

#Particle
execute anchored eyes run particle crit ^ ^0.5 ^ 0.3 0.01 0.3 0.001 1

execute if score @s mbGemScareTimer matches 30.. run function mob_gem:mob_gem/cat/scare/4_unscare
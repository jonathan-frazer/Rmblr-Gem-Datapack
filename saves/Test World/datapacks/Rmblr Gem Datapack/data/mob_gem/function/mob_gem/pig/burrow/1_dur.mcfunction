#Increment Timer
scoreboard players add @s mbGemBurrow 1
execute at @s run tp @s ~ ~ ~ ~ 90

#Effects
execute if score @s mbGemBurrow matches 1..21 at @s run function mob_gem:mob_gem/pig/burrow/2_fx

#Burrow
execute if score @s mbGemBurrow matches 1..9 at @s run tp @s ~ ~-0.12 ~
execute if score @s mbGemBurrow matches 11..17 at @s run tp @s ~ ~0.25 ~

#Get Item
execute if score @s mbGemBurrow matches 12 run function mob_gem:mob_gem/pig/burrow/3_get

#Move
execute if score @s mbGemBurrow matches 18.. run function mob_gem:mob_gem/pig/burrow/end
scoreboard players add @s mbGemExplosionTime 1

#Prevent you from dying
execute if score @s mbGemExplosionTime matches 11 run effect give @s resistance 1 25 true

#Explode
execute if score @s mbGemExplosionTime matches 30 at @s run function mob_gem:mob_gem/creeper/2_explode
execute if score @s mbGemExplosionTime matches 30.. run function mob_gem:mob_gem/creeper/end
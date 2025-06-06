#Increment Timer
scoreboard players add @s mbGemGhastFireball 1

execute if score @s mbGemGhastFireball matches 10 run function mob_gem:mob_gem/ghast/fireball/2_shoot

execute if score @s mbGemGhastFireball matches 10.. run function mob_gem:mob_gem/ghast/fireball/end
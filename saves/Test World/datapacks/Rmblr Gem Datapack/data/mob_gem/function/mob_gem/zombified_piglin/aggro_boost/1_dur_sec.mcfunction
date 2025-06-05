#Increment Timer
scoreboard players add @s mbZombPigTagTimer 1

#End
execute if score @s mbZombPigTagTimer matches 24.. run function mob_gem:mob_gem/zombified_piglin/aggro_boost/2_remove_tag
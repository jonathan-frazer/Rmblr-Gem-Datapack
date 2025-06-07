scoreboard players add @s mbZombPigBuffTimer 1

execute at @s run particle dust{color:[0.925,0.574,0.550],scale:1.2f} ~ ~1 ~ 0.15 0.3 0.15 0.001 1 force

execute if score @s mbZombPigBuffTimer matches 64.. run function mob_gem:mob_gem/zombified_piglin/aggro_boost/5_end_buff
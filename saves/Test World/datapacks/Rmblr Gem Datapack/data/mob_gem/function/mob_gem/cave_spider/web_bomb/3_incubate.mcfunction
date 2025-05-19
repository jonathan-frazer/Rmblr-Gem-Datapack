scoreboard players add @s mbGem_fakePlayer 1
#Particle
execute at @s run particle dust{color:[1.0, 1.0, 1.0],scale:1.0f} ~ ~-0.2 ~ 0.3 0.3 0.3 0.001 10 normal


execute if score @s mbGem_fakePlayer matches 12.. at @s run function mob_gem:mob_gem/cave_spider/web_bomb/4_blast
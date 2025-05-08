execute at @s run summon area_effect_cloud ^ ^0.5 ^1 {CustomName:'{"text":"Throwpointer"}',Duration:2}
execute store result score @s OriginX run data get entity @s Pos[0] 1000
execute store result score @s OriginY run data get entity @s Pos[1] 1000
execute store result score @s OriginZ run data get entity @s Pos[2] 1000
execute store result score @s ThrowX run data get entity @e[type=area_effect_cloud,limit=1,name=Throwpointer] Pos[0] 1000
execute store result score @s ThrowY run data get entity @e[type=area_effect_cloud,limit=1,name=Throwpointer] Pos[1] 1000
execute store result score @s ThrowZ run data get entity @e[type=area_effect_cloud,limit=1,name=Throwpointer] Pos[2] 1000

scoreboard players operation @s ThrowX -= @s OriginX
scoreboard players operation @s ThrowY -= @s OriginY
scoreboard players operation @s ThrowZ -= @s OriginZ

#This Just Adds One block to the Y Axis
scoreboard players operation @s ThrowY += One ThrowY

execute store result storage mob_gem:auxillary cave_spider.throw.MotionX double 0.00035 run scoreboard players get @s ThrowX
execute store result storage mob_gem:auxillary cave_spider.throw.MotionY double 0.00035 run scoreboard players get @s ThrowY
execute store result storage mob_gem:auxillary cave_spider.throw.MotionZ double 0.00035 run scoreboard players get @s ThrowZ

#Throw
execute at @s run function mob_gem:mob_gem/cave_spider/web_bomb/1_toss with storage mob_gem:auxillary cave_spider.throw
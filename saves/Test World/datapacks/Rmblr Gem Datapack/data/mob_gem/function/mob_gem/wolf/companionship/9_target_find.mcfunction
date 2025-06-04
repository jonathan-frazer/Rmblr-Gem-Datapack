#Take Score and Add 1
execute store result score yWolf mbGemWolfID run data get entity @s Pos[1] 1.0
scoreboard players add yWolf mbGemWolfID 1
execute store result storage mob_gem:auxillary Wolf.yCoord int 1.0 run scoreboard players get yWolf mbGemWolfID

#Now Perform the Teleport
execute positioned as @s run function mob_gem:mob_gem/wolf/companionship/10_teleport with storage mob_gem:auxillary Wolf
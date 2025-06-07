#Preload the Owner IDs
execute store result score enderSafe0 mbGemTrackingID run data get entity @s ArmorItems[0].components."minecraft:custom_data".Owner[0]
execute store result score enderSafe1 mbGemTrackingID run data get entity @s ArmorItems[0].components."minecraft:custom_data".Owner[1]
execute store result score enderSafe2 mbGemTrackingID run data get entity @s ArmorItems[0].components."minecraft:custom_data".Owner[2]
execute store result score enderSafe3 mbGemTrackingID run data get entity @s ArmorItems[0].components."minecraft:custom_data".Owner[3]

#Scan All viable entities
execute as @a run function mob_gem:mob_gem/endermite/pearl_immune/3_check

#Compare First ID
execute store result score @s mbGemTrackingID run data get entity @s UUID[2] 1

execute if score @s mbGemTrackingID = enderSafe2 mbGemTrackingID run function mob_gem:mob_gem/endermite/pearl_immune/6_check
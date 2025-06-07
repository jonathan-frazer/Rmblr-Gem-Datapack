#Compare First ID
execute store result score @s mbGemTrackingID run data get entity @s UUID[0] 1

execute if score @s mbGemTrackingID = enderSafe0 mbGemTrackingID run function mob_gem:mob_gem/endermite/pearl_immune/4_check
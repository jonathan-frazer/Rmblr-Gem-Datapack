#Compare First ID
execute store result score @s mbGemTrackingID run data get entity @s UUID[1] 1

execute if score @s mbGemTrackingID = enderSafe1 mbGemTrackingID run function mob_gem:mob_gem/endermite/pearl_immune/5_check
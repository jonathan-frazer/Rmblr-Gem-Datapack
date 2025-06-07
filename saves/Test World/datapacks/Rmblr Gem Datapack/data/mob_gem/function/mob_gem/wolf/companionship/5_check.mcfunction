#Compare First ID
execute store result score @s mbGemTrackingID run data get entity @s UUID[0] 1

execute if score @s mbGemTrackingID = wolfCompanion0 mbGemTrackingID run function mob_gem:mob_gem/wolf/companionship/6_check
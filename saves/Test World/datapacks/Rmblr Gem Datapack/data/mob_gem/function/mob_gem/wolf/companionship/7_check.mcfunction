#Compare Third ID
execute store result score @s mbGemTrackingID run data get entity @s UUID[2] 1

execute if score @s mbGemTrackingID = wolfCompanion2 mbGemTrackingID run function mob_gem:mob_gem/wolf/companionship/8_check
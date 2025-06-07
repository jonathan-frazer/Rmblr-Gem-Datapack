#Compare Last ID
execute store result score @s mbGemTrackingID run data get entity @s UUID[3] 1

execute if score @s mbGemTrackingID = wolfCompanion3 mbGemTrackingID run function mob_gem:mob_gem/wolf/companionship/9_target_find
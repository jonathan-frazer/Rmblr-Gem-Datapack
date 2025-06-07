#Compare Second ID
execute store result score @s mbGemTrackingID run data get entity @s UUID[1] 1

execute if score @s mbGemTrackingID = wolfCompanion1 mbGemTrackingID run function mob_gem:mob_gem/wolf/companionship/7_check
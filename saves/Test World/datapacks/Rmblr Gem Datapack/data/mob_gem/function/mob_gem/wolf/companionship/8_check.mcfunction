#Compare Last ID
execute store result score @s mbGemWolfID run data get entity @s UUID[3] 1

execute if score @s mbGemWolfID = wolfCompanion3 mbGemWolfID run function mob_gem:mob_gem/wolf/companionship/9_target_find
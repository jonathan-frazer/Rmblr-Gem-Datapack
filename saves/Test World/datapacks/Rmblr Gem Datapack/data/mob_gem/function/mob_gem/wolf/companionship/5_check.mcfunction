#Compare First ID
execute store result score @s mbGemWolfID run data get entity @s UUID[0] 1

execute if score @s mbGemWolfID = wolfCompanion0 mbGemWolfID run function mob_gem:mob_gem/wolf/companionship/6_check
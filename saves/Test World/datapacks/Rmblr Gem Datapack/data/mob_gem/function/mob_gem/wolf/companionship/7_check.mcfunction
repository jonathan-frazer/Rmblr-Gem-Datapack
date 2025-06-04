#Compare Third ID
execute store result score @s mbGemWolfID run data get entity @s UUID[2] 1

execute if score @s mbGemWolfID = wolfCompanion2 mbGemWolfID run function mob_gem:mob_gem/wolf/companionship/8_check
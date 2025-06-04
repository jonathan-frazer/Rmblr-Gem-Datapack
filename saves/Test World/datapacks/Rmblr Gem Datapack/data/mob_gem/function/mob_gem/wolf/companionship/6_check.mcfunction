#Compare Second ID
execute store result score @s mbGemWolfID run data get entity @s UUID[1] 1

execute if score @s mbGemWolfID = wolfCompanion1 mbGemWolfID run function mob_gem:mob_gem/wolf/companionship/7_check
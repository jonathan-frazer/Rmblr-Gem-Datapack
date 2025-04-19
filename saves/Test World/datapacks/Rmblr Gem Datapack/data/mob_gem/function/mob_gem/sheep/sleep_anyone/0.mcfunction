#Runs Every Second
execute store result score @s mbGemSleepSec run data get entity @s SleepTimer
execute if score @s mbGemSleepSec matches 101.. run time set day
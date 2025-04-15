#Add Sleep timer
scoreboard players add @s mbGemSleepTick 1

#Check if Sleep timer is at max
execute if score @s mbGemSleepTick matches 81 run function mob_gem:mob_gem/sheep/sleep_anywhere/end
#Add Sleep timer
scoreboard players add @s mbGemSleepTick 1

#Wake up if you click in the middle
execute if predicate mob_gem:sheep_gem/holding_item if score @s mbGem_Click matches 1..3 run function mob_gem:mob_gem/sheep/sleep_anywhere/wake_up

#Check if Sleep timer is at max
execute if score @s mbGemSleepTick matches 81 run function mob_gem:mob_gem/sheep/sleep_anywhere/end
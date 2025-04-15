#Clear Barrier
execute at @s run fill ~1 ~1 ~1 ~-1 ~ ~-1 air replace barrier

#Clear Gem Sleep Timer
scoreboard players reset @s mbGemSleepTick

#Clear Effects
effect clear @s slowness
effect clear @s blindness

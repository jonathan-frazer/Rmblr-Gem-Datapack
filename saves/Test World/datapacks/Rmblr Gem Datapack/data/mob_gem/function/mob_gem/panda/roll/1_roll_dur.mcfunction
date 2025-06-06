#Timer
scoreboard players add @s mbGemPandaRoll 1

#Initial Roll
execute if score @s mbGemPandaRoll matches 2 run function mob_gem:mob_gem/panda/roll/2_init
execute if score @s mbGemPandaRoll matches 2..5 rotated ~ 0 positioned ^ ^ ^0.5 rotated as @s if block ~ ~1 ~ #mob_gem:passable run tp @s ~ ~-0.065 ~ ~ ~25

#Hitting the Ground
execute if score @s mbGemPandaRoll matches 5 run playsound entity.player.small_fall master @a[distance=..6] ~ ~ ~ 1 1 1

#Rising back up
execute if score @s mbGemPandaRoll matches 6 rotated ~ 0 positioned ^ ^ ^0.5 rotated as @s if block ~ ~2 ~ #mob_gem:passable run tp @s ~ ~1.35 ~ ~ ~-25
execute if score @s mbGemPandaRoll matches 7..9 rotated ~ 0 positioned ^ ^ ^0.5 rotated as @s if block ~ ~1 ~ #mob_gem:passable run tp @s ~ ~0.065 ~ ~ ~-20

#Clear Roll Effects
execute if score @s mbGemPandaRoll matches 10 run function mob_gem:mob_gem/panda/roll/3_clear_roll

#Finish
execute if score @s mbGemPandaRoll matches 16 run function mob_gem:mob_gem/panda/roll/4_end_roll
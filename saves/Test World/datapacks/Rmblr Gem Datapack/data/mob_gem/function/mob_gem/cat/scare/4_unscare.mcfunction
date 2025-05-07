#Remove Scared
data modify entity @s NoAI set value 0b
attribute @s[type=player] minecraft:generic.jump_strength modifier remove mob_gem:scared_jump
attribute @s[type=player] minecraft:generic.movement_speed modifier remove mob_gem:scared_move

#Clear Scared Timer
scoreboard players reset @s mbGemScareTimer

#Kill the Cat
execute as @e[type=cat,name="mbGemCatScare"] run function mob_gem:mob_gem/cat/scare/5_kill_cat
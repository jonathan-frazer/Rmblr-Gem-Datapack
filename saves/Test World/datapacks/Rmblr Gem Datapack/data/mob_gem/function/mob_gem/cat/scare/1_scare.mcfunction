#Scared
scoreboard players set @s mbGemScareTimer 1
data modify entity @s NoAI set value 1b
attribute @s[type=player] minecraft:generic.jump_strength modifier add mob_gem:scared_jump -1.0 add_multiplied_base
attribute @s[type=player] minecraft:generic.movement_speed modifier add mob_gem:scared_move -1.0 add_multiplied_base

#Spawn Cat
summon cat ~ ~ ~ {CustomName:'{"text":"mbGemCatScare"}',Team:Intangible,Invulnerable:1b,Silent:1b}
execute as @n[type=cat,name="mbGemCatScare",distance=..1] run function mob_gem:mob_gem/cat/scare/2_effect_cat
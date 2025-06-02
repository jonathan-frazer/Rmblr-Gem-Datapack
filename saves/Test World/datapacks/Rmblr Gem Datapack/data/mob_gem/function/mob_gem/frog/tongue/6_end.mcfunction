#Reset Gamemode
execute if score @s previousGameType matches 0 run gamemode survival @s
execute if score @s previousGameType matches 1 run gamemode creative @s
execute if score @s previousGameType matches 2 run gamemode adventure @s
scoreboard players reset @s previousGameType

#Clear Effects
playsound entity.zombie.infect master @a[distance=..16] ~ ~ ~ 1 1 1
effect clear @s[type=!player] resistance
effect clear @s[type=!player] invisibility
data modify entity @s[type=!player] NoAI set value 0b
data modify entity @s[type=!player] Silent set value 0b
data modify entity @s[type=!player] Invulnerable set value 0b
team leave @s[team=Intangible,type=!player]

damage @s 3.0 player_attack by @p[predicate=mob_gem:frog_gem/has_item]

scoreboard players reset @s mbGemFrogpull

tp @s ~ ~0.4 ~ ~ ~
kill @n[type=item,distance=..5,name=mbGemMorphlight]

tag @s remove mbGemTurnedFrog
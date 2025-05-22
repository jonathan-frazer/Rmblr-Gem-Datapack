scoreboard players add @s mbGemFrogpull 1

#Force Into Spectator and Spectating the froglight
gamemode spectator @s[type=player] 
spectate @n[type=item,distance=..5,name="mbGemMorphlight"] @s[gamemode=spectator,type=player]

#If it is a mob tp to the item
tp @s[type=!player] @n[type=item,distance=..5,name="mbGemMorphlight"]

execute if score @s mbGemFrogpull matches 100.. run function mob_gem:mob_gem/frog/tongue/6_end
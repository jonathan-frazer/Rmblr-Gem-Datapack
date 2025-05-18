#Leap Timer
scoreboard players add @s mbGemLeap 1

#Levitation
execute if score @s mbGemLeap matches 5 run effect clear @s levitation
$execute at @s rotated $(rotX) 0 positioned ^ ^ ^0.45 if block ~ ~ ~ #mob_gem:passable if block ~ ~1 ~ #mob_gem:passable run tp @s ^ ^ ^-0.05

#Effects
execute positioned as @s run function mob_gem:mob_gem/rabbit/leap/2_fx

#Reset
execute if score @s mbGemLeap matches 15.. positioned as @s unless block ~ ~-0.1 ~ #mob_gem:passable run function mob_gem:mob_gem/rabbit/leap/end
execute if score @s mbGemLeap matches 15.. positioned as @s if block ~ ~ ~ water run function mob_gem:mob_gem/rabbit/leap/end
execute if score @s mbGemLeap matches 100.. run function mob_gem:mob_gem/rabbit/leap/end
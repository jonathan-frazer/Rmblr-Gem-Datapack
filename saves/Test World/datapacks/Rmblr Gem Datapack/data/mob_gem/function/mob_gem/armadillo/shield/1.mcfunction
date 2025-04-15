scoreboard players add @s mbGemArmadilloShield 1

#Summon Armadillo
execute if score @s mbGemArmadilloShield matches 2 rotated ~ 0 positioned ~ ~0.75 ~ run function mob_gem:mob_gem/armadillo/shield/2

#Rotate
execute as @e[type=armadillo,tag=armaDilloShield_0] rotated ~ 0 positioned ~ ~0.75 ~ run tp @s ^1.00 ^ ^0.00
execute as @e[type=armadillo,tag=armaDilloShield_1] rotated ~ 0 positioned ~ ~0.75 ~ run tp @s ^0.71 ^ ^0.71
execute as @e[type=armadillo,tag=armaDilloShield_2] rotated ~ 0 positioned ~ ~0.75 ~ run tp @s ^0.00 ^ ^1.00
execute as @e[type=armadillo,tag=armaDilloShield_3] rotated ~ 0 positioned ~ ~0.75 ~ run tp @s ^-0.71 ^ ^0.71
execute as @e[type=armadillo,tag=armaDilloShield_4] rotated ~ 0 positioned ~ ~0.75 ~ run tp @s ^-1.00 ^ ^0.00
execute as @e[type=armadillo,tag=armaDilloShield_5] rotated ~ 0 positioned ~ ~0.75 ~ run tp @s ^-0.71 ^ ^-0.71
execute as @e[type=armadillo,tag=armaDilloShield_6] rotated ~ 0 positioned ~ ~0.75 ~ run tp @s ^-0.00 ^ ^-1.00
execute as @e[type=armadillo,tag=armaDilloShield_7] rotated ~ 0 positioned ~ ~0.75 ~ run tp @s ^0.71 ^ ^-0.71

#Apply Effects
execute if score @s mbGemArmadilloShield matches ..180 run effect give @s resistance 1 25 true
execute if score @s mbGemArmadilloShield matches ..180 run effect give @s slowness 1 0 true

#End Ability
execute if score @s mbGemArmadilloShield matches 200.. run function mob_gem:mob_gem/armadillo/shield/end
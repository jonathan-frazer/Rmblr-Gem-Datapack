#Spin Animation
scoreboard players add @s mbGemAxePhase 30
execute store result entity @s Pose.Head[2] float -1.0 run scoreboard players get @s mbGemAxePhase
scoreboard players set @s[scores={mbGemAxePhase=329..}] mbGemAxePhase 0

tp @s ^ ^ ^0.05 ~-90 ~
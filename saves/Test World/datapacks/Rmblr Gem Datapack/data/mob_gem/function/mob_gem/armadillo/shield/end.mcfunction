#Kill
execute if score @s mbGemArmadilloShield matches 200 run tp @e[type=armadillo,distance=..6,tag=armaDilloShield] ~ ~-1000 ~

#Set 20sec Cooldown
scoreboard players set @s mbGem_AbilityCooldown 20

#Reset Score
scoreboard players set @s mbGemArmadilloShield 0
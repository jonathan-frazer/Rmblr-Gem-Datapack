#Addition
scoreboard players add @s mbGemRavageSprintDur 1

#Modulo Addition
scoreboard players add @s mbGemRavageSprintCyc 1
scoreboard players operation @s mbGemRavageSprintCyc %= ten mbGem_fakePlayer

#Ravage Sprint Cycle
execute if score @s mbGemRavageSprintCyc matches 9 run function mob_gem:mob_gem/ravager/sprint/1_calculate_speed
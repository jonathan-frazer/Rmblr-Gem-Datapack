#Cooldown
scoreboard players set @s mbGem_AbilityCooldown 1

#Flap by giving levitation
tag @s add mbGemChickenFlap
effect give @s levitation 1 13 true

#Decrement Flap
scoreboard players remove @s mbGemChickenFlaps 1

#Visuals and Sound
playsound item.book.page_turn master @a[distance=..12] ~ ~ ~ 1 1 1
particle cloud ~ ~ ~ 0.1 0.1 0.1 0.01 12 normal
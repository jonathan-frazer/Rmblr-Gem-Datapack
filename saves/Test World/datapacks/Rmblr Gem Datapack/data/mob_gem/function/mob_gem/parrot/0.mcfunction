#Jump
effect give @s levitation 1 25 true

#Sound
playsound item.book.page_turn master @a[distance=..16] ~ ~ ~ 0.65 1 0.65
#Particle
particle cloud ~ ~1 ~ 0.2 0.2 0.2 0.01 10 normal

#Keep Timer
scoreboard players set @s mbGemDJumptimer 1
#Cooldown
scoreboard players set @s mbGem_AbilityCooldown 10

#Sound
playsound entity.slime.attack master @a[distance=..12] ~ ~ ~ 1 1.1 1
particle item_slime ~ ~ ~ 0.25 0.25 0.25 0.005 10 normal

#Stomp
effect give @s levitation 1 23 true

#Stomp Tag
tag @s add mbGemSlimeStomp
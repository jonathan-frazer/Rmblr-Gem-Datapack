#Get Item from Piglin Bartering
loot give @s loot gameplay/piglin_bartering

#Cooldown
scoreboard players set @s mbGem_AbilityCooldown 6

#Playsound
execute at @s run playsound entity.piglin.admiring_item master @a[distance=..12] ~ ~ ~ 1 1.05 1
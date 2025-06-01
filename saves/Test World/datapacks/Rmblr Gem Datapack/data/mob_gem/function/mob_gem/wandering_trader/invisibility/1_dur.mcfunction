#Get Invis
scoreboard players add @s mbGemWanderInvis 1
execute if score @s mbGemWanderInvis matches 5 at @s run playsound entity.generic.drink master @a[distance=..12] ~ ~ ~ 1 0.9 1
execute if score @s mbGemWanderInvis matches 10 at @s run playsound entity.generic.drink master @a[distance=..12] ~ ~ ~ 1 0.9 1
execute if score @s mbGemWanderInvis matches 15 at @s run playsound entity.generic.drink master @a[distance=..12] ~ ~ ~ 1 0.9 1

execute if score @s mbGemWanderInvis matches 15.. run function mob_gem:mob_gem/wandering_trader/invisibility/2_activate
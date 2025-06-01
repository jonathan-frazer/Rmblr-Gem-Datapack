#Effects
effect clear @s slowness

#If Invisible clear
execute if score @s mbGem_AbilityCooldown matches 1.. run function mob_gem:mob_gem/wandering_trader/invisibility/4_deactivate

#Invisibility if Night time
execute unless score @s mbGem_AbilityCooldown matches 1.. run function mob_gem:mob_gem/wandering_trader/invisibility/3_activate

#Reset Timer
scoreboard players reset @s mbGemWanderInvis
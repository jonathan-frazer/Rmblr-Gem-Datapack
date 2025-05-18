#Buffs
$effect give @s strength $(count) 0 false

#Cooldown
scoreboard players set @s mbGem_AbilityCooldown 10

#Playsound
execute at @s run playsound entity.player.burp master @a[distance=..12] ~ ~ ~ 1 1 1
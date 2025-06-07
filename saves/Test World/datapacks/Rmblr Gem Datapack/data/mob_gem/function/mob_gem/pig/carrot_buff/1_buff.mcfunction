#Buffs
$effect give @s speed $(Carrotcount) 0 false

#Cooldown
scoreboard players set @s[predicate=!mob_gem:having_dragon_egg] mbGem_AbilityCooldown 15
scoreboard players set @s[predicate=mob_gem:having_dragon_egg] mbGem_AbilityCooldown 7

#Playsound
execute at @s run playsound entity.player.burp master @a[distance=..12] ~ ~ ~ 1 1 1
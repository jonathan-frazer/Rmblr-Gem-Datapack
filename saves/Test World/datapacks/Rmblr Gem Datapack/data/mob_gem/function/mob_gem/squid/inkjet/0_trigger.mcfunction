#Cooldown
scoreboard players set @s[predicate=!mob_gem:having_dragon_egg] mbGem_AbilityCooldown 7
scoreboard players set @s[predicate=mob_gem:having_dragon_egg] mbGem_AbilityCooldown 4

#Blast
execute positioned ^ ^ ^2 run function mob_gem:mob_gem/squid/inkjet/1_ink_blast
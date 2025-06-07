scoreboard players reset @s mbGem_Click

#Set 4 Sec Cooldown
scoreboard players set @s[predicate=!mob_gem:having_dragon_egg] mbGem_AbilityCooldown 4
scoreboard players set @s[predicate=mob_gem:having_dragon_egg] mbGem_AbilityCooldown 2

#Gather all items around
execute at @s run function mob_gem:mob_gem/allay/pickup_item/1_gather
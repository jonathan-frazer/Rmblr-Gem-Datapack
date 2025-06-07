#Deactivate if morning
execute unless predicate mob_gem:wandering_trader_gem/night_time run function mob_gem:mob_gem/wandering_trader/invisibility/4_deactivate

#Cooldown
scoreboard players set @s[predicate=!mob_gem:having_dragon_egg] mbGem_AbilityCooldown 15
scoreboard players set @s[predicate=mob_gem:having_dragon_egg] mbGem_AbilityCooldown 7
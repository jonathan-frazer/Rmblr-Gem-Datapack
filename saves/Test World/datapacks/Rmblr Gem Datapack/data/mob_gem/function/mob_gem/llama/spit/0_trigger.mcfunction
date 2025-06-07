#Cooldown
scoreboard players set @s[predicate=!mob_gem:having_dragon_egg] mbGem_AbilityCooldown 4
scoreboard players set @s[predicate=mob_gem:having_dragon_egg] mbGem_AbilityCooldown 2

#Store Pos
execute positioned 0.00 0.00 0.00 run function mob_gem:mob_gem/llama/spit/1_store_pos

#Launch
execute anchored eyes run function mob_gem:mob_gem/llama/spit/2_spit with storage mob_gem:auxillary llama
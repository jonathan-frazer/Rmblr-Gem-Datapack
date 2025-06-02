#Cooldown
scoreboard players set @s mbGem_AbilityCooldown 7

#Store Pos
execute positioned 0.00 0.00 0.00 run function mob_gem:mob_gem/wither/skull/1_store_pos

#Launch
execute anchored eyes run function mob_gem:mob_gem/wither/skull/2_shoot with storage mob_gem:auxillary wither.skullPos
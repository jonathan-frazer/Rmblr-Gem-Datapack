#Spawns Bees
execute anchored eyes as @e[distance=..12,type=!#mob_gem:nalive,predicate=!mob_gem:bee_gem/holding_item] facing entity @s eyes anchored feet positioned ^ ^ ^1 rotated as @p[predicate=mob_gem:bee_gem/holding_item] positioned ^ ^ ^-1 if entity @p[distance=..0.35,predicate=mob_gem:bee_gem/holding_item] positioned ^ ^ ^1 at @p[predicate=mob_gem:bee_gem/holding_item] positioned ~ ~1 ~ run function mob_gem:mob_gem/bee/swarm/1_target_select

#Spawn Bees
tag @s add mbGemBeeSpawning
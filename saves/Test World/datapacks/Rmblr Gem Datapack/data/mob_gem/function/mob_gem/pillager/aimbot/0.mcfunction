#Flag Variable
scoreboard players set mbGemPillagerFound mbGem_fakePlayer 0

#Find Target
execute anchored eyes as @e[distance=..32,type=!#mob_gem:nalive,predicate=!mob_gem:pillager_gem/has_item] facing entity @s eyes anchored feet positioned ^ ^ ^1 rotated as @p[predicate=mob_gem:pillager_gem/has_item] positioned ^ ^ ^-1 if entity @p[distance=..0.35,predicate=mob_gem:pillager_gem/has_item] positioned ^ ^ ^1 run function mob_gem:mob_gem/pillager/aimbot/1_target_fetch

#Find Arrow
execute if score mbGemPillagerFound mbGem_fakePlayer matches 1.. anchored eyes positioned ^ ^ ^1 as @n[type=#minecraft:arrows,distance=..3] run function mob_gem:mob_gem/pillager/aimbot/2_arrow_alter

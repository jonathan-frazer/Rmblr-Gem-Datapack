#Cooldown
scoreboard players set @s mbGem_AbilityCooldown 3

#Store Pos
execute positioned 0.00 0.00 0.00 run function mob_gem:mob_gem/cave_spider/web_bomb/1_store_pos

#Launch
execute anchored eyes run function mob_gem:mob_gem/cave_spider/web_bomb/2_shoot with storage mob_gem:auxillary caveSpider.webPos
#Cooldown
scoreboard players set @s[predicate=!mob_gem:having_dragon_egg] mbGem_AbilityCooldown 6
scoreboard players set @s[predicate=mob_gem:having_dragon_egg] mbGem_AbilityCooldown 3
title @s[scores={mbGem_AbilityCooldown=1..}] actionbar [{"color":"#ca9140","text":"Cooldown: "},{"color":"#1BD01B","score":{"name":"@s","objective":"mbGem_AbilityCooldown"}},{"color":"#1bd01b","text":"s"}]

#Store Pos
execute positioned 0.00 0.00 0.00 run function mob_gem:mob_gem/cave_spider/web_bomb/1_store_pos

#Launch
execute anchored eyes run function mob_gem:mob_gem/cave_spider/web_bomb/2_shoot with storage mob_gem:auxillary caveSpider.webPos
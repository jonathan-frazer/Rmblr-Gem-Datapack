scoreboard players set @p[predicate=mob_gem:horse_gem/holding_item] mbGem_nonHorseRide 1
scoreboard players set @p[predicate=mob_gem:horse_gem/holding_item,predicate=!mob_gem:having_dragon_egg] mbGem_AbilityCooldown 25
scoreboard players set @p[predicate=mob_gem:horse_gem/holding_item,predicate=mob_gem:having_dragon_egg] mbGem_AbilityCooldown 15
title @s[scores={mbGem_AbilityCooldown=1..}] actionbar [{"color":"#ca9140","text":"Cooldown: "},{"color":"#1BD01B","score":{"name":"@s","objective":"mbGem_AbilityCooldown"}},{"color":"#1bd01b","text":"s"}]
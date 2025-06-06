#Display
title @s[scores={mbGem_AbilityCooldown=1..}] actionbar [{"color":"#ca9140","text":"Cooldown: "},{"color":"#1BD01B","score":{"name":"@s","objective":"mbGem_AbilityCooldown"}},{"color":"#1bd01b","text":"s"}]
execute unless score @s mbGem_AbilityCooldown matches 1.. run title @s actionbar [{"color":"#1bd01b","text":"Ability Ready"}]
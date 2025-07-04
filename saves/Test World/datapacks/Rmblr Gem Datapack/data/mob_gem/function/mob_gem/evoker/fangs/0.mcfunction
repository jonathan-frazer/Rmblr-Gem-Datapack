#Cooldown
scoreboard players set @s[predicate=!mob_gem:having_dragon_egg] mbGem_AbilityCooldown 5
scoreboard players set @s[predicate=mob_gem:having_dragon_egg] mbGem_AbilityCooldown 3
title @s[scores={mbGem_AbilityCooldown=1..}] actionbar [{"color":"#ca9140","text":"Cooldown: "},{"color":"#1BD01B","score":{"name":"@s","objective":"mbGem_AbilityCooldown"}},{"color":"#1bd01b","text":"s"}]

#Fangs
execute rotated ~ 0 if block ^ ^ ^2 #mob_gem:passable run summon evoker_fangs ^ ^-0.5 ^2 {Warmup:1}
execute rotated ~ 0 if block ^ ^ ^3 #mob_gem:passable run summon evoker_fangs ^ ^-0.5 ^3 {Warmup:1}
execute rotated ~ 0 if block ^ ^ ^4 #mob_gem:passable run summon evoker_fangs ^ ^-0.5 ^4 {Warmup:1}
execute rotated ~ 0 if block ^ ^ ^5 #mob_gem:passable run summon evoker_fangs ^ ^-0.5 ^5 {Warmup:1}
execute rotated ~ 0 if block ^ ^ ^6 #mob_gem:passable run summon evoker_fangs ^ ^-0.5 ^6 {Warmup:1}
execute rotated ~ 0 if block ^ ^ ^7 #mob_gem:passable run summon evoker_fangs ^ ^-0.5 ^7 {Warmup:1}
execute rotated ~ 0 if block ^ ^ ^8 #mob_gem:passable run summon evoker_fangs ^ ^-0.5 ^8 {Warmup:1}
execute rotated ~ 0 if block ^ ^ ^9 #mob_gem:passable run summon evoker_fangs ^ ^-0.5 ^9 {Warmup:1}

execute rotated ~ 0 unless block ^ ^ ^2 #mob_gem:passable if block ^ ^1 ^2 #mob_gem:passable run summon evoker_fangs ^ ^0.5 ^2 {Warmup:1}
execute rotated ~ 0 unless block ^ ^ ^3 #mob_gem:passable if block ^ ^1 ^3 #mob_gem:passable run summon evoker_fangs ^ ^0.5 ^3 {Warmup:1}
execute rotated ~ 0 unless block ^ ^ ^4 #mob_gem:passable if block ^ ^1 ^4 #mob_gem:passable run summon evoker_fangs ^ ^0.5 ^4 {Warmup:1}
execute rotated ~ 0 unless block ^ ^ ^5 #mob_gem:passable if block ^ ^1 ^5 #mob_gem:passable run summon evoker_fangs ^ ^0.5 ^5 {Warmup:1}
execute rotated ~ 0 unless block ^ ^ ^6 #mob_gem:passable if block ^ ^1 ^6 #mob_gem:passable run summon evoker_fangs ^ ^0.5 ^6 {Warmup:1}
execute rotated ~ 0 unless block ^ ^ ^7 #mob_gem:passable if block ^ ^1 ^7 #mob_gem:passable run summon evoker_fangs ^ ^0.5 ^7 {Warmup:1}
execute rotated ~ 0 unless block ^ ^ ^8 #mob_gem:passable if block ^ ^1 ^8 #mob_gem:passable run summon evoker_fangs ^ ^0.5 ^8 {Warmup:1}
execute rotated ~ 0 unless block ^ ^ ^9 #mob_gem:passable if block ^ ^1 ^9 #mob_gem:passable run summon evoker_fangs ^ ^0.5 ^9 {Warmup:1}
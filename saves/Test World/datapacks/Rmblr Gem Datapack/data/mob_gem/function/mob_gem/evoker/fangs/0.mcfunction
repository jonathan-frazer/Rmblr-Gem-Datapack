#Cooldown
scoreboard players set @s mbGem_AbilityCooldown 6

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
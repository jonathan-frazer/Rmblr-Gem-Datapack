scoreboard players add @s mbGemRavagerRoared 1

execute facing entity @p[predicate=mob_gem:ravager_gem/has_item] feet rotated ~ 0 positioned ^ ^ ^-0.5 if block ~ ~0.15 ~ #mob_gem:passable if block ~ ~1.15 ~ #mob_gem:passable run tp @s ^ ^ ^0.05

execute if score @s mbGemRavagerRoared matches 15.. run function mob_gem:mob_gem/ravager/roar/4_clear
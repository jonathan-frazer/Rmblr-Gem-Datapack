scoreboard players add @s mbGem_fakePlayer 1

tp @s ~ ~ ~ ~10 0
execute at @s facing entity @p[predicate=mob_gem:vindicator_gem/has_item] feet rotated ~ 0 run tp @s ^-0.95 ^ ^0.15
execute at @s rotated ~ 0 positioned ^ ^1.75 ^1 run function mob_gem:mob_gem/vindicator/tomohawk_throw/3_hitbox


execute if score @s mbGem_fakePlayer matches 80.. run function mob_gem:mob_gem/vindicator/tomohawk_throw/end
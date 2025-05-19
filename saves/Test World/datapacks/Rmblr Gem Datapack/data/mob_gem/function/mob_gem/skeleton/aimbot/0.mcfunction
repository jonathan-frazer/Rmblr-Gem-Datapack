#Revoke Advancements
advancement revoke @s[advancements={mob_gem:skeleton/aimbot_0=true}] only mob_gem:skeleton/aimbot_0
advancement revoke @s[advancements={mob_gem:skeleton/aimbot_1=true}] only mob_gem:skeleton/aimbot_1
advancement revoke @s[advancements={mob_gem:skeleton/aimbot_2=true}] only mob_gem:skeleton/aimbot_2

#Code For Aimbot
execute unless predicate mob_gem:sneak anchored eyes facing entity @n[type=!#mob_gem:nalive,distance=0.15..] eyes positioned ^ ^ ^0.5 rotated as @s positioned ^ ^ ^1 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~
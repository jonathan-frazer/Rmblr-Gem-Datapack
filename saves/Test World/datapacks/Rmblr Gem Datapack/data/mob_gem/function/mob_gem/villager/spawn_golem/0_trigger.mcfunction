#Cooldown
scoreboard players set @s[predicate=!mob_gem:having_dragon_egg] mbGem_AbilityCooldown 30
scoreboard players set @s[predicate=mob_gem:having_dragon_egg] mbGem_AbilityCooldown 20

#Spawn Golem
execute rotated ~ 0 positioned ^ ^ ^2 run function mob_gem:mob_gem/villager/spawn_golem/1_summon
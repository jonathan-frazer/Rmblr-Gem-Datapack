#Explosion
particle explosion ~ ~1 ~ 3 1 3 0.001 15 normal
particle end_rod ~ ~1 ~ 3 1 3 0.001 100 force
playsound entity.lightning_bolt.impact master @a[distance=..32] ~ ~ ~ 0.85 1.5 0.85

#Levitation
effect give @e[type=!#mob_gem:nalive,distance=..12] levitation 7 2 false
effect give @s slow_falling 11 0 true

#Cooldown
scoreboard players set @s[predicate=!mob_gem:having_dragon_egg] mbGem_AbilityCooldown 15
scoreboard players set @s[predicate=mob_gem:having_dragon_egg] mbGem_AbilityCooldown 7
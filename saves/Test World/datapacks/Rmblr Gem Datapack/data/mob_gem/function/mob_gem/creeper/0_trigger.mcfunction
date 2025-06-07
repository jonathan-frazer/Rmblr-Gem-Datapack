#Cooldown
scoreboard players set @s[predicate=!mob_gem:having_dragon_egg] mbGem_AbilityCooldown 30
scoreboard players set @s[predicate=mob_gem:having_dragon_egg] mbGem_AbilityCooldown 16

#Activate Explosion
scoreboard players set @s mbGemExplosionTime 1

#Playsound
playsound minecraft:entity.creeper.primed master @a[distance=..16] ~ ~ ~ 1 1.1 1

#Primed Effect
effect give @s glowing 2 14 true
attribute @s generic.movement_speed modifier add mob_gem:creeper_primed -0.1 add_value
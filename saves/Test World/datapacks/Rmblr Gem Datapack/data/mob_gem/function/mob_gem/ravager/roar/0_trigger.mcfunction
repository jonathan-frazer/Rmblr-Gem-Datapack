scoreboard players set @s[predicate=!mob_gem:having_dragon_egg] mbGem_AbilityCooldown 15
scoreboard players set @s[predicate=mob_gem:having_dragon_egg] mbGem_AbilityCooldown 8

#Start Roar
scoreboard players set @s mbGemRavagerRoar 1
execute at @s run playsound entity.ravager.stunned master @a[distance=..12] ~ ~ ~ 1 1.1 1 
attribute @s generic.movement_speed modifier add mob_gem:ravager_slow -1.0 add_multiplied_base
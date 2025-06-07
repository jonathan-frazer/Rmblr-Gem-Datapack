scoreboard players set @s mbGem_AbilityCooldown 15

#Start Roar
scoreboard players set @s mbGemRavagerRoar 1
execute at @s run playsound entity.ravager.stunned master @a[distance=..12] ~ ~ ~ 1 1.1 1 
attribute @s generic.movement_speed modifier add mob_gem:ravager_slow -1.0 add_multiplied_base
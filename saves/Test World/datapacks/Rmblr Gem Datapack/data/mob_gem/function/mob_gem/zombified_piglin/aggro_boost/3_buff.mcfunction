#Apply Buffs
scoreboard players set @s mbZombPigBuffTimer 1

attribute @s generic.movement_speed modifier add mob_gem:zombie_pig_move_speed 0.5 add_multiplied_base
attribute @s generic.attack_speed modifier add mob_gem:zombie_pig_atk_speed 0.15 add_multiplied_base
attribute @s generic.attack_damage modifier add mob_gem:zombie_pig_strength 0.5 add_multiplied_base

#Sound
playsound entity.zombified_piglin.angry master @a[distance=..12] ~ ~ ~ 0.75 1.15 1
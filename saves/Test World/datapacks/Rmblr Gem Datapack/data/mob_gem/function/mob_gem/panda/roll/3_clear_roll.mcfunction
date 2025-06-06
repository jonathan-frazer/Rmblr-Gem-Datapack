effect clear @s resistance
effect clear @s hunger
execute as @s run attribute @s generic.knockback_resistance base set 0.0
playsound entity.player.small_fall master @a[distance=..6] ~ ~ ~ 1 1.2 1

#Remove Weakness
effect clear @e[type=!#mob_gem:nalive,distance=..64,predicate=mob_gem:panda_gem/roll_stunned,predicate=!mob_gem:panda_gem/has_item] weakness
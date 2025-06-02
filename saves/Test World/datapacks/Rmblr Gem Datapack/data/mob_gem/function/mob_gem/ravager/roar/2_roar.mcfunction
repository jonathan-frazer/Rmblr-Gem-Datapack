#Clear
scoreboard players reset @s mbGemRavagerRoar
attribute @s generic.movement_speed modifier remove mob_gem:ravager_slow

#Roar particle
particle cloud ~ ~ ~ 1 1 1 0.001 40 normal @a[distance=..42]
particle cloud ~ ~ ~ 1 1 1 0.001 10 force @a[distance=..42]

#Mob Gem
playsound entity.ravager.roar master @a[distance=..24] ~ ~ ~ 1 0.95 1
scoreboard players set @e[type=!#mob_gem:nalive,distance=0.1..6.5,predicate=!mob_gem:ravager_gem/has_item] mbGemRavagerRoared 1
execute as @e[type=!#mob_gem:nalive,distance=0.1..6.5,predicate=!mob_gem:ravager_gem/has_item] run damage @s 2.0 player_attack by @p[predicate=mob_gem:ravager_gem/has_item]
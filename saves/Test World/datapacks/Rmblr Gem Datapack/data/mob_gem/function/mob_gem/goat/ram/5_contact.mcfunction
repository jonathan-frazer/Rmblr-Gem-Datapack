#Sound
execute at @s run playsound entity.goat.screaming.ram_impact master @a[distance=..12] ~ ~ ~ 1 0.9 1

#Damage
execute as @n[type=!#mob_gem:nalive,distance=..2,tag=mbGoatRamTget] run function mob_gem:mob_gem/goat/ram/6_damage

#End Move
function mob_gem:mob_gem/goat/ram/end

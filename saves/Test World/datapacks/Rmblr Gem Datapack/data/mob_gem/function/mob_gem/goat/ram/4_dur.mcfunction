#Move Toward Target
scoreboard players add @s mbGemGoatRam 1

#Aim Target
execute anchored eyes facing entity @n[type=!#mob_gem:nalive,distance=..18,tag=mbGoatRamTget] eyes positioned ^ ^ ^0.5 rotated as @s positioned ^ ^ ^1 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~

#Move Foward
execute rotated ~ 0 positioned ^ ^ ^0.80 if block ~ ~0.35 ~ #mob_gem:passable if block ~ ~1.35 ~ #mob_gem:passable run tp @s ^ ^ ^-0.05

#Step Up Blocks
execute rotated ~ 0 positioned ^ ^ ^0.80 unless block ~ ~0.35 ~ #mob_gem:passable if block ~ ~1.35 ~ #mob_gem:passable positioned ~ ~1 ~ run tp @s ^ ^ ^-0.05

#Prevent Contact Damage
effect give @n[type=!#mob_gem:nalive,distance=..6,tag=mbGoatRamTget,type=!player] weakness 1 5 true

#Contact
execute if entity @n[type=!#mob_gem:nalive,distance=..2,tag=mbGoatRamTget] run function mob_gem:mob_gem/goat/ram/5_contact

#Particle
particle cloud ~ ~1.25 ~ 0.35 0.35 0.35 0.001 2 force
particle cloud ~ ~1.25 ~ 0.35 0.35 0.35 0.001 10 normal



execute if score @s mbGemGoatRam matches 30.. run function mob_gem:mob_gem/goat/ram/end
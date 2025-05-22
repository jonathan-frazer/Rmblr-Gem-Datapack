#Effects
particle block{block_state:"minecraft:dirt"} ~ ~0.75 ~ 0.13 0.1 0.13 0.01 5 force
playsound block.rooted_dirt.break master @a[distance=..12] ~ ~ ~ 0.7 0.1 0.7

#Down
execute if score @s mbGem_snifferBurrow matches 2..10 run tp @s ~ ~-0.08 ~

#Horizontal
execute if score @s mbGem_snifferBurrow matches 11 rotated as @s at @n[type=armor_stand,name=sniffBurrowLocation] run tp @s ~ ~-1.55 ~ ~ ~

#Up
execute if score @s mbGem_snifferBurrow matches 12..18 run tp @s ~ ~0.25 ~

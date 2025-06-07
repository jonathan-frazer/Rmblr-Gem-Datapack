scoreboard players set raycast mbGem_fakePlayer -1

#Cooldown
scoreboard players set @s[predicate=!mob_gem:having_dragon_egg] mbGem_AbilityCooldown 15
scoreboard players set @s[predicate=mob_gem:having_dragon_egg] mbGem_AbilityCooldown 8
execute at @s run playsound block.beacon.activate master @a[distance=..12] ~ ~ ~ 1 1.5 1

#Laser Tag
execute as @n[type=!#mob_gem:nalive,predicate=!mob_gem:guardian_gem/holding_item,distance=..2] run function mob_gem:mob_gem/guardian/laser/3
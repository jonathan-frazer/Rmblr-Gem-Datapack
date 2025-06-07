scoreboard players set goatRamRay mbGem_fakePlayer -1

#Cooldown
scoreboard players set @s[predicate=!mob_gem:having_dragon_egg] mbGem_AbilityCooldown 5
scoreboard players set @s[predicate=mob_gem:having_dragon_egg] mbGem_AbilityCooldown 3
execute at @s run playsound entity.goat.screaming.prepare_ram master @a[distance=..12] ~ ~ ~ 1 0.9 1

#Mark Target to Be Rammed
execute as @n[type=!#mob_gem:nalive,predicate=!mob_gem:goat_gem/holding_item,distance=..2.5] run function mob_gem:mob_gem/goat/ram/3_mark

#Begin Raming
scoreboard players set @s mbGemGoatRam 1
attribute @s generic.gravity modifier add mob_gem:goat_ram_gravity -1.0 add_multiplied_base
attribute @s generic.armor modifier add mob_gem:goat_ram_armor 20.0 add_value
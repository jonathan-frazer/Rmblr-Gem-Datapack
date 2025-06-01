#Cooldown
scoreboard players set @s mbGem_AbilityCooldown 5

#Break
execute positioned ~ ~0.3 ~ positioned ^ ^ ^1 unless block ~ ~ ~ #mob_gem:unbreakable run setblock ~ ~ ~ air destroy
execute anchored eyes positioned ^ ^ ^1 unless block ~ ~ ~ #mob_gem:unbreakable run setblock ~ ~ ~ air destroy
execute positioned ~ ~0.3 ~ positioned ^1 ^ ^1 unless block ~ ~ ~ #mob_gem:unbreakable run setblock ~ ~ ~ air destroy
execute anchored eyes positioned ^1 ^ ^1 unless block ~ ~ ~ #mob_gem:unbreakable run setblock ~ ~ ~ air destroy
execute positioned ~ ~0.3 ~ positioned ^-1 ^ ^1 unless block ~ ~ ~ #mob_gem:unbreakable run setblock ~ ~ ~ air destroy
execute anchored eyes positioned ^-1 ^ ^1 unless block ~ ~ ~ #mob_gem:unbreakable run setblock ~ ~ ~ air destroy

execute positioned ~ ~0.3 ~ positioned ^ ^ ^2 unless block ~ ~ ~ #mob_gem:unbreakable run setblock ~ ~ ~ air destroy
execute anchored eyes positioned ^ ^ ^2 unless block ~ ~ ~ #mob_gem:unbreakable run setblock ~ ~ ~ air destroy
execute positioned ~ ~0.3 ~ positioned ^1 ^ ^2 unless block ~ ~ ~ #mob_gem:unbreakable run setblock ~ ~ ~ air destroy
execute anchored eyes positioned ^1 ^ ^2 unless block ~ ~ ~ #mob_gem:unbreakable run setblock ~ ~ ~ air destroy
execute positioned ~ ~0.3 ~ positioned ^-1 ^ ^2 unless block ~ ~ ~ #mob_gem:unbreakable run setblock ~ ~ ~ air destroy
execute anchored eyes positioned ^-1 ^ ^2 unless block ~ ~ ~ #mob_gem:unbreakable run setblock ~ ~ ~ air destroy

#Break Sound
playsound entity.zombie.attack_wooden_door master @a[distance=..12] ~ ~ ~ 1 1 1
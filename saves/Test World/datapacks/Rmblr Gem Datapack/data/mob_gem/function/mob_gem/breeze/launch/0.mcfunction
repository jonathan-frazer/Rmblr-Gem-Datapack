#Reset Score
scoreboard players reset @s mbGem_Click

#Move
summon wind_charge ~ ~ ~ {acceleration_power:0.1d,Motion:[0.0,0.0,0.0]}
execute if predicate mob_gem:breeze_gem/variance run summon wind_charge ~ ~ ~ {acceleration_power:0.1d,Motion:[0.0,0.0,0.0]}
summon wind_charge ~ ~ ~ {acceleration_power:0.1d,Motion:[0.0,-0.01,0.0]}

#Cooldown
scoreboard players set @s mbGem_AbilityCooldown 5
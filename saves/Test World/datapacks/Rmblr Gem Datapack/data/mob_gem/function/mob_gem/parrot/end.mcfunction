#Reset
scoreboard players reset @s mbGemDJumptimer

#Clear Effect
effect clear @s levitation

#Begin Gliding
effect give @s slow_falling 120 2 true
scoreboard players set @s[predicate=!mob_gem:having_dragon_egg] mbGem_AbilityCooldown 4
scoreboard players set @s[predicate=mob_gem:having_dragon_egg] mbGem_AbilityCooldown 2
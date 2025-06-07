#Get Trident Back
function mob_gem:mob_gem/drowned/riptide/3_back

#Apply Cooldown
scoreboard players set @s[predicate=!mob_gem:having_dragon_egg] mbGem_AbilityCooldown 10
scoreboard players set @s[predicate=mob_gem:having_dragon_egg] mbGem_AbilityCooldown 5
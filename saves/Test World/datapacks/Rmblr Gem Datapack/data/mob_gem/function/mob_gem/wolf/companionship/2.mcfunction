scoreboard players set wolfCompanionRay mbGem_fakePlayer -1

#Cooldown
scoreboard players set @s[predicate=!mob_gem:having_dragon_egg] mbGem_AbilityCooldown 5
scoreboard players set @s[predicate=mob_gem:having_dragon_egg] mbGem_AbilityCooldown 2

#Store UUID
execute as @n[type=!#mob_gem:nalive,predicate=!mob_gem:wolf_gem/holding_item,distance=..2.5] run function mob_gem:mob_gem/wolf/companionship/3_store_uuid
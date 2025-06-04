scoreboard players set wolfCompanionRay mbGem_fakePlayer -1

#Cooldown
scoreboard players set @s mbGem_AbilityCooldown 5

#Store UUID
execute as @n[type=!#mob_gem:nalive,predicate=!mob_gem:wolf_gem/holding_item,distance=..2.5] run function mob_gem:mob_gem/wolf/companionship/3_store_uuid
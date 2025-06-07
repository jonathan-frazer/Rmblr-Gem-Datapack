#Trigger
scoreboard players set @s[predicate=!mob_gem:having_dragon_egg] mbGem_AbilityCooldown 40
scoreboard players set @s[predicate=mob_gem:having_dragon_egg] mbGem_AbilityCooldown 30

#Activate Shrink
scoreboard players set @s mbGemShrinkSilver 1
tag @s add mbGemSilverforward

#Silverfish Sound
playsound entity.silverfish.step master @a[distance=..12] ~ ~ ~ 1 1 1
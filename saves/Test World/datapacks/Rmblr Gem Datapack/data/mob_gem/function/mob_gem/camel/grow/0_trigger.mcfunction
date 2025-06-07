#Cooldown
scoreboard players set @s[predicate=!mob_gem:having_dragon_egg] mbGem_AbilityCooldown 40
scoreboard players set @s[predicate=mob_gem:having_dragon_egg] mbGem_AbilityCooldown 30

#Grow
attribute @s generic.scale modifier add mob_gem:camel_height 0.65 add_multiplied_base
scoreboard players set @s mbGem_camelGrow 1

#Give Effects
execute at @s run function mob_gem:mob_gem/camel/grow/2_give_effects
#Item Invincibility
execute as @e[type=item,tag=!mbGemitemInvul] if data entity @s Item.components.minecraft:custom_data.mbGem run data merge entity @s {Invulnerable:1b,Age:0,Tags:["mbGemitemInvul"]}

#Armadillo
    #Ability
    execute as @a[scores={mbGem_Click=1..3},predicate=mob_gem:armadillo_gem/holding_item] unless score @s mbGem_AbilityCooldown matches 1.. run function mob_gem:mob_gem/armadillo/shield/0
    execute as @a[scores={mbGemArmadilloShield=1..}] at @s run function mob_gem:mob_gem/armadillo/shield/1

#Parrot
    #Ability
    execute as @a[scores={mbGem_Click=1..3},predicate=mob_gem:parrot_gem/holding_item] unless score @s mbGem_AbilityCooldown matches 1.. at @s run function mob_gem:mob_gem/parrot/0
    execute as @a[scores={mbGemDJumptimer=1..}] at @s run function mob_gem:mob_gem/parrot/1
    effect clear @a[predicate=mob_gem:parrot_gem/should_clear_effect] slow_falling

#Sheep
    #Ability
    execute as @a[scores={mbGem_Click=1..3},predicate=mob_gem:sheep_gem/holding_item] unless score @s mbGem_AbilityCooldown matches 1.. if predicate mob_gem:sheep_gem/night_time at @s run function mob_gem:mob_gem/sheep/sleep_anywhere/0
    execute as @a[predicate=mob_gem:sheep_gem/sleeping] run function mob_gem:mob_gem/sheep/sleep_anywhere/1
    
scoreboard players reset @a mbGem_Click
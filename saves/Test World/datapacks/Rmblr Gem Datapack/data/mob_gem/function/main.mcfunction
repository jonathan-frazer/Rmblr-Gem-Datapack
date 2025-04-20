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
    execute as @a[scores={mbGem_Click=1..3},predicate=mob_gem:sheep_gem/holding_item,predicate=!mob_gem:sheep_gem/sleeping,predicate=mob_gem:sheep_gem/night_time] unless score @s mbGem_AbilityCooldown matches 1.. at @s run function mob_gem:mob_gem/sheep/sleep_anywhere/0
    execute as @a[predicate=mob_gem:sheep_gem/sleeping] run function mob_gem:mob_gem/sheep/sleep_anywhere/1

#Breeze
    #Ability
    execute as @a[scores={mbGem_Click=1..3},predicate=mob_gem:breeze_gem/holding_item] unless score @s mbGem_AbilityCooldown matches 1.. if predicate mob_gem:on_ground at @s run function mob_gem:mob_gem/breeze/launch/0

#Drowned
    #Ability 
    execute as @a[scores={mbGem_Click=1..3},predicate=mob_gem:drowned_gem/holding_item] unless dimension minecraft:the_nether unless score @s mbGem_AbilityCooldown matches 1.. at @s run function mob_gem:mob_gem/drowned/riptide/0
    execute as @a[scores={mbGemRiptide=1..}] run function mob_gem:mob_gem/drowned/riptide/2_back
    execute as @a[scores={mbGemTrident=1..}] run function mob_gem:mob_gem/drowned/riptide/6_launch

#Warden
    #Ability
    execute as @a[scores={mbGem_Click=1..3},predicate=mob_gem:warden_gem/holding_item] unless score @s mbGem_AbilityCooldown matches 1.. at @s run function mob_gem:mob_gem/warden/sonic_boom/0_activate
    execute as @a[scores={mbGemSonicBoom=1..}] at @s run function mob_gem:mob_gem/warden/sonic_boom/1_dur

#Strider
    #Perk
        #Walk on Lava
        execute as @a[tag=!mbGemStriderLava,predicate=mob_gem:strider_gem/has_item,gamemode=!spectator] at @s if block ~ ~-0.5 ~ lava run function mob_gem:mob_gem/strider/on_lava
        execute as @a[tag=mbGemStriderLava,predicate=mob_gem:strider_gem/has_item] at @s unless block ~ ~-0.5 ~ lava run function mob_gem:mob_gem/strider/off_lava
        execute as @a[predicate=!mob_gem:strider_gem/has_item,tag=mbGemStriderLava] run function mob_gem:mob_gem/strider/off_lava

        #Sink in Lava
        execute as @a[predicate=mob_gem:strider_gem/has_item,predicate=mob_gem:sneak,gamemode=!spectator] at @s if block ~ ~-0.5 ~ lava run tp @s ~ ~-0.1 ~
        execute as @a[predicate=mob_gem:strider_gem/has_item,gamemode=!spectator] at @s if block ~ ~ ~ lava run effect give @s fire_resistance 1 0 true

#Enderman
    #Perk
    execute as @a[predicate=mob_gem:enderman_gem/has_item] at @s run function mob_gem:mob_gem/enderman/aggro/0_scan
    #Ability
    execute as @a[predicate=mob_gem:enderman_gem/holding_item,scores={mbGem_Click=1..3}] at @s anchored eyes positioned ^ ^ ^0.1 run function mob_gem:mob_gem/enderman/teleport/0

scoreboard players reset @a mbGem_Click
scoreboard players reset @a mbGemTrident
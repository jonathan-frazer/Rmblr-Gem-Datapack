#Item Invincibility
execute as @e[type=item,tag=!mbGemitemInvul] if data entity @s Item.components.minecraft:custom_data.mbGem run data merge entity @s {Invulnerable:1b,Age:0,Tags:["mbGemitemInvul"]}

#Allay
    #Ability
    execute as @a[scores={mbGem_Click=1..3},predicate=mob_gem:allay_gem/holding_item] unless score @s mbGem_AbilityCooldown matches 1.. run function mob_gem:mob_gem/allay/pickup_item/0_trigger

#Armadillo
    #Ability
    execute as @a[scores={mbGem_Click=1..3},predicate=mob_gem:armadillo_gem/holding_item] unless score @s mbGem_AbilityCooldown matches 1.. run function mob_gem:mob_gem/armadillo/shield/0
    execute as @a[scores={mbGemArmadilloShield=1..}] at @s run function mob_gem:mob_gem/armadillo/shield/1

#Bat
    #Ability
    execute as @a[scores={mbGem_Click=1..3},predicate=mob_gem:bat_gem/holding_item] unless score @s mbGem_AbilityCooldown matches 1.. at @s run function mob_gem:mob_gem/bat/echolocation/0_trigger

#Bee
    #Ability
    execute as @a[scores={mbGem_Click=1..3},predicate=mob_gem:bee_gem/holding_item] unless score @s mbGem_AbilityCooldown matches 1.. at @s run function mob_gem:mob_gem/bee/swarm/0_trigger
    execute as @a[tag=mbGemBeeSpawning] at @s run function mob_gem:mob_gem/bee/swarm/2_bee_spawning
    execute as @e[type=bee,name=GemBeeSpawn] run function mob_gem:mob_gem/bee/swarm/4_bee_dur

#Breeze
    #Ability
    execute as @a[scores={mbGem_Click=1..3},predicate=mob_gem:breeze_gem/holding_item] unless score @s mbGem_AbilityCooldown matches 1.. if predicate mob_gem:on_ground at @s run function mob_gem:mob_gem/breeze/launch/0
    
#Camel
    #Ability
    execute as @a[scores={mbGem_Click=1..3},predicate=mob_gem:camel_gem/holding_item] unless score @s mbGem_AbilityCooldown matches 1.. at @s run function mob_gem:mob_gem/camel/grow/0_trigger

#Cat
    #Ability
    execute as @a[predicate=mob_gem:cat_gem/holding_item,scores={mbGem_Click=1..3}] at @s unless score @s mbGem_AbilityCooldown matches 1.. run function mob_gem:mob_gem/cat/scare/0_trigger
    execute as @e[type=!#mob_gem:nalive,scores={mbGemScareTimer=1..}] at @s run function mob_gem:mob_gem/cat/scare/3_dur

#Cave Spider
    #Ability
    execute as @a[predicate=mob_gem:cave_spider_gem/holding_item,scores={mbGem_Click=1..3}] at @s unless score @s mbGem_AbilityCooldown matches 1.. run function mob_gem:mob_gem/cave_spider/web_bomb/0_aim
    execute as @e[type=falling_block,name="webBombBlock"] at @s unless block ~ ~-0.5 ~ #mob_gem:passable run function mob_gem:mob_gem/cave_spider/web_bomb/2_lay
    execute as @e[type=area_effect_cloud,name="mbWebBombPrimer"] run function mob_gem:mob_gem/cave_spider/web_bomb/3_incubate

#Creeper
    #Ability
    execute as @a[predicate=mob_gem:creeper_gem/holding_item,scores={mbGem_Click=1..3}] at @s unless score @s mbGem_AbilityCooldown matches 1.. run function mob_gem:mob_gem/creeper/0_trigger
    execute as @a[scores={mbGemExplosionTime=1..}] run function mob_gem:mob_gem/creeper/1_dur

#Dolphin
    #Ability
    execute as @a[predicate=mob_gem:dolphin_gem/holding_item,scores={mbGem_Click=1..3}] at @s unless score @s mbGem_AbilityCooldown matches 1.. anchored eyes as @e[distance=..6,type=!#mob_gem:nalive,predicate=!mob_gem:dolphin_gem/holding_item] facing entity @s eyes anchored feet positioned ^ ^ ^1 rotated as @p[predicate=mob_gem:dolphin_gem/holding_item] positioned ^ ^ ^-1 if entity @p[distance=..0.35,predicate=mob_gem:dolphin_gem/holding_item] positioned ^ ^ ^1 run function mob_gem:mob_gem/dolphin/bestow_grace

#Drowned
    #Ability 
    execute as @a[scores={mbGem_Click=1..3},predicate=mob_gem:drowned_gem/holding_item] unless dimension minecraft:the_nether unless score @s mbGem_AbilityCooldown matches 1.. at @s run function mob_gem:mob_gem/drowned/riptide/0
    execute as @a[scores={mbGemRiptide=1..}] run function mob_gem:mob_gem/drowned/riptide/2_back
    execute as @a[scores={mbGemTrident=1..}] run function mob_gem:mob_gem/drowned/riptide/6_launch

#Enderman
    #Perk
    execute as @a[predicate=mob_gem:enderman_gem/has_item] at @s run function mob_gem:mob_gem/enderman/aggro/0_scan
    #Ability
    execute as @a[predicate=mob_gem:enderman_gem/holding_item,scores={mbGem_Click=1..3}] at @s unless score @s mbGem_AbilityCooldown matches 1.. anchored eyes positioned ^ ^ ^0.1 run function mob_gem:mob_gem/enderman/teleport/0

#Evoker
    #Ability
    execute as @a[predicate=mob_gem:evoker_gem/holding_item,scores={mbGem_Click=1..3}] at @s unless score @s mbGem_AbilityCooldown matches 1.. positioned ^ ^ ^0.1 run function mob_gem:mob_gem/evoker/fangs/0

#Fox
    #Ability
    execute as @a[predicate=mob_gem:fox_gem/holding_item,scores={mbGem_Click=1..3}] at @s unless score @s mbGem_AbilityCooldown matches 1.. positioned ^ ^ ^0.1 run function mob_gem:mob_gem/fox/pounce/0
    execute as @a[scores={mbGem_foxPounce=1..}] at @s run function mob_gem:mob_gem/fox/pounce/4_dur

#Parrot
    #Ability
    execute as @a[scores={mbGem_Click=1..3},predicate=mob_gem:parrot_gem/holding_item] unless score @s mbGem_AbilityCooldown matches 1.. at @s run function mob_gem:mob_gem/parrot/0
    execute as @a[scores={mbGemDJumptimer=1..}] at @s run function mob_gem:mob_gem/parrot/1
    effect clear @a[predicate=mob_gem:parrot_gem/should_clear_effect] slow_falling

#Pig
    #Ability
    execute as @a[predicate=mob_gem:pig_gem/holding_item,scores={mbGem_Click=1..3}] at @s unless score @s mbGem_AbilityCooldown matches 1.. run function mob_gem:mob_gem/pig/carrot_buff/0_trigger

#Piglin Brute
    #Ability
    execute as @a[predicate=mob_gem:piglin_brute_gem/holding_item,scores={mbGem_Click=1..3}] at @s unless score @s mbGem_AbilityCooldown matches 1.. run function mob_gem:mob_gem/piglin_brute/tomohawk_throw/0_trigger
    execute as @e[type=armor_stand,name="mbGemTomohawkI"] run function mob_gem:mob_gem/piglin_brute/tomohawk_throw/3_dur

#Pillager
    #Ability
    execute as @a[predicate=mob_gem:pillager_gem/has_item,scores={mbGemCrossbow=1..3},predicate=!mob_gem:sneak] at @s unless score @s mbGem_AbilityCooldown matches 1.. run function mob_gem:mob_gem/pillager/aimbot/0

#Rabbit
    #Ability
    execute as @a[predicate=mob_gem:rabbit_gem/holding_item,scores={mbGem_Click=1..3},predicate=mob_gem:on_ground] at @s unless score @s mbGem_AbilityCooldown matches 1.. run function mob_gem:mob_gem/rabbit/leap/0_trigger
    execute as @a[scores={mbGemLeap=1..}] run function mob_gem:mob_gem/rabbit/leap/1_dur with storage mob_gem:auxillary rabbit

#Spider
    #Ability
    execute as @a[predicate=mob_gem:spider_gem/holding_item] at @s run function mob_gem:mob_gem/spider/wall_climb/0
    #Perk
    execute as @a[predicate=mob_gem:spider_gem/has_item,predicate=mob_gem:spider_gem/slowed_by_web] at @s run function mob_gem:mob_gem/spider/cobweb_immunity/0

#Sheep
    #Ability
    execute as @a[scores={mbGem_Click=1..3},predicate=mob_gem:sheep_gem/holding_item,predicate=!mob_gem:sheep_gem/sleeping,predicate=mob_gem:sheep_gem/night_time] unless score @s mbGem_AbilityCooldown matches 1.. at @s run function mob_gem:mob_gem/sheep/sleep_anywhere/0
    execute as @a[predicate=mob_gem:sheep_gem/sleeping] run function mob_gem:mob_gem/sheep/sleep_anywhere/1

#Shulker
    #Ability
    execute as @a[predicate=mob_gem:shulker_gem/holding_item,scores={mbGem_Click=1..3}] at @s unless score @s mbGem_AbilityCooldown matches 1.. run function mob_gem:mob_gem/shulker/0

#Strider
    #Ability
    execute as @a[scores={mbGem_Click=1..3},predicate=mob_gem:strider_gem/holding_item] unless score @s mbGem_AbilityCooldown matches 1.. at @s run function mob_gem:mob_gem/strider/lava_spawn/0_trigger
    execute as @e[type=area_effect_cloud,name="mbGem_LavaCluster"] at @s run function mob_gem:mob_gem/strider/lava_spawn/3_lava_cluster

    #Perk
        #Walk on Lava
        execute as @a[tag=!mbGemStriderLava,predicate=mob_gem:strider_gem/has_item,gamemode=!spectator] at @s if block ~ ~-0.5 ~ lava run function mob_gem:mob_gem/strider/lava_walk/on_lava
        execute as @a[tag=mbGemStriderLava,predicate=mob_gem:strider_gem/has_item] at @s unless block ~ ~-0.5 ~ lava run function mob_gem:mob_gem/strider/lava_walk/off_lava
        execute as @a[predicate=!mob_gem:strider_gem/has_item,tag=mbGemStriderLava] run function mob_gem:mob_gem/strider/lava_walk/off_lava

        #Sink in Lava
        execute as @a[predicate=mob_gem:strider_gem/has_item,predicate=mob_gem:sneak,gamemode=!spectator] at @s if block ~ ~-0.5 ~ lava run tp @s ~ ~-0.1 ~
        execute as @a[predicate=mob_gem:strider_gem/has_item,gamemode=!spectator] at @s if block ~ ~ ~ lava run effect give @s fire_resistance 1 0 true

#Vindicator
    #Ability
    execute as @a[scores={mbGem_Click=1..3},predicate=mob_gem:vindicator_gem/holding_item] unless score @s mbGem_AbilityCooldown matches 1.. at @s run function mob_gem:mob_gem/vindicator/tomohawk_throw/0_trigger
    execute as @e[type=armor_stand,name="mbGemTomohawkII"] at @s run function mob_gem:mob_gem/vindicator/tomohawk_throw/2_dur

#Vex
    #Ability
    execute as @a[scores={mbGem_Click=1..3},predicate=mob_gem:vex_gem/holding_item] unless score @s mbGem_AbilityCooldown matches 1.. at @s run function mob_gem:mob_gem/vex/rage/0_trigger

#Warden
    #Ability
    execute as @a[scores={mbGem_Click=1..3},predicate=mob_gem:warden_gem/holding_item] unless score @s mbGem_AbilityCooldown matches 1.. at @s run function mob_gem:mob_gem/warden/sonic_boom/0_activate
    execute as @a[scores={mbGemSonicBoom=1..}] at @s run function mob_gem:mob_gem/warden/sonic_boom/1_dur


scoreboard players reset @a mbGem_Click
scoreboard players reset @a mbGemTrident
scoreboard players reset @a mbGemCrossbow
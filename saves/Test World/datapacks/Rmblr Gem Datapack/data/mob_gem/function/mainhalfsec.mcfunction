#Breeze
    #Perk
    execute as @a[predicate=mob_gem:breeze_gem/has_item,tag=!mbGemBreezePad] run function mob_gem:mob_gem/breeze/remove_fall_dmg/apply
    execute as @a[predicate=!mob_gem:breeze_gem/has_item,tag=mbGemBreezePad] run function mob_gem:mob_gem/breeze/remove_fall_dmg/remove

#Cat
    #Perk
    execute as @a[predicate=mob_gem:cat_gem/has_item,tag=!mbGemCatScurry] if entity @n[type=!#mob_gem:nalive,predicate=mob_gem:cat_gem/chasing] run function mob_gem:mob_gem/cat/scurry/apply
    execute as @a[predicate=!mob_gem:cat_gem/has_item,tag=mbGemCatScurry] run function mob_gem:mob_gem/cat/scurry/remove
    execute as @a[predicate=mob_gem:cat_gem/has_item,tag=mbGemCatScurry] unless entity @n[type=!#mob_gem:nalive,predicate=mob_gem:cat_gem/chasing] run function mob_gem:mob_gem/cat/scurry/remove

#Cod
    #Perk
    execute as @a[predicate=mob_gem:cod_gem/has_item] at @s anchored eyes run function mob_gem:mob_gem/cod/vision
    execute as @a[predicate=!mob_gem:cod_gem/has_item,predicate=mob_gem:cod_gem/vision_effect] run effect clear @s night_vision

#Drowned
    #Perk
    execute as @a[predicate=mob_gem:drowned_gem/has_item,tag=!mbGemDrownedWater] run function mob_gem:mob_gem/drowned/water_speed/apply
    execute as @a[predicate=!mob_gem:drowned_gem/has_item,tag=mbGemDrownedWater] run function mob_gem:mob_gem/drowned/water_speed/remove

#Evoker
    #Perk
    execute as @a[predicate=mob_gem:evoker_gem/has_item] positioned as @s as @e[type=vex,predicate=mob_gem:evoker_gem/vex_targeting,distance=..4] positioned as @s run function mob_gem:mob_gem/evoker/vex_immune/0_terminate

#Piglin Brute
    #Perk
    execute as @a[predicate=mob_gem:piglin_brute_gem/has_item,tag=!mbGemGoldBoost] if entity @n[type=!#mob_gem:nalive,predicate=mob_gem:piglin_brute_gem/holding_gold_tool] run function mob_gem:mob_gem/piglin_brute/gold_boost/apply
    execute as @a[predicate=!mob_gem:piglin_brute_gem/has_item,tag=mbGemGoldBoost] run function mob_gem:mob_gem/piglin_brute/gold_boost/remove
    execute as @a[predicate=mob_gem:piglin_brute_gem/has_item,tag=mbGemGoldBoost] unless entity @n[type=!#mob_gem:nalive,predicate=mob_gem:piglin_brute_gem/holding_gold_tool] run function mob_gem:mob_gem/piglin_brute/gold_boost/remove

#Rabbit
    #Perk
    execute as @a[predicate=mob_gem:rabbit_gem/has_item,tag=!mbGemRabbitJB] run function mob_gem:mob_gem/rabbit/jump_boost/apply
    execute as @a[predicate=!mob_gem:rabbit_gem/has_item,tag=mbGemRabbitJB] run function mob_gem:mob_gem/rabbit/jump_boost/remove

#Salmon
    #Perk
    execute as @a[predicate=mob_gem:salmon_gem/has_item] at @s anchored eyes run function mob_gem:mob_gem/salmon/haste
    execute as @a[predicate=!mob_gem:salmon_gem/has_item,predicate=mob_gem:salmon_gem/haste_effect] run effect clear @s haste

#Tropical Fish
    #Perk
    execute as @a[predicate=mob_gem:tropical_fish_gem/has_item,predicate=mob_gem:tropical_fish_gem/in_biome] at @s anchored eyes run function mob_gem:mob_gem/tropical_fish/conduit_power
    execute as @a[predicate=!mob_gem:tropical_fish_gem/in_biome,predicate=mob_gem:tropical_fish_gem/conduit_effect] run effect clear @s conduit_power
    execute as @a[predicate=!mob_gem:tropical_fish_gem/has_item,predicate=mob_gem:tropical_fish_gem/conduit_effect] run effect clear @s conduit_power

#Vex
    #Perk
    execute as @a[predicate=mob_gem:vex_gem/has_item] positioned as @s run function mob_gem:mob_gem/vex/suffocation_regen/0
    
    #Ability
    tag @a[tag=mbGemVexCharge,predicate=!mob_gem:vex_gem/raging] remove mbGemVexCharge 

#Vindicator
    #Perk
    execute as @a[predicate=mob_gem:vindicator_gem/has_item,tag=!mbGemIronBoost] if entity @n[type=!#mob_gem:nalive,predicate=mob_gem:vindicator_gem/holding_iron_tool] run function mob_gem:mob_gem/vindicator/iron_boost/apply
    execute as @a[predicate=!mob_gem:vindicator_gem/has_item,tag=mbGemIronBoost] run function mob_gem:mob_gem/vindicator/iron_boost/remove
    execute as @a[predicate=mob_gem:vindicator_gem/has_item,tag=mbGemIronBoost] unless entity @n[type=!#mob_gem:nalive,predicate=mob_gem:vindicator_gem/holding_iron_tool] run function mob_gem:mob_gem/vindicator/iron_boost/remove

#Warden
    #Ability
    execute as @a[scores={mbGemWardHeart=1..}] run function mob_gem:mob_gem/warden/sonic_boom/6_black_heart

#Cycle every Half Second
schedule function mob_gem:mainhalfsec 10t


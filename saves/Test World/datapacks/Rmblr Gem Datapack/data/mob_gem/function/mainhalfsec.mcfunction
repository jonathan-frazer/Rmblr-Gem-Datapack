#Bat
    #Perk
    execute as @a[predicate=mob_gem:bat_gem/has_item,predicate=mob_gem:bat_gem/underground] run function mob_gem:mob_gem/bat/night_vision/apply
    execute as @a[predicate=mob_gem:bat_gem/has_item,predicate=!mob_gem:bat_gem/underground,predicate=mob_gem:bat_gem/has_night_vision] run function mob_gem:mob_gem/bat/night_vision/remove
    execute as @a[predicate=!mob_gem:bat_gem/has_item,predicate=mob_gem:bat_gem/has_night_vision] run function mob_gem:mob_gem/bat/night_vision/remove
    
#Breeze
    #Perk
    execute as @a[predicate=mob_gem:breeze_gem/has_item,tag=!mbGemBreezePad] run function mob_gem:mob_gem/breeze/remove_fall_dmg/apply
    execute as @a[predicate=!mob_gem:breeze_gem/has_item,tag=mbGemBreezePad] run function mob_gem:mob_gem/breeze/remove_fall_dmg/remove

#Cat
    #Perk
    execute as @a[predicate=mob_gem:cat_gem/has_item,tag=!mbGemCatScurry] if entity @n[type=!#mob_gem:nalive,predicate=mob_gem:cat_gem/chasing] run function mob_gem:mob_gem/cat/scurry/apply
    execute as @a[predicate=!mob_gem:cat_gem/has_item,tag=mbGemCatScurry] run function mob_gem:mob_gem/cat/scurry/remove
    execute as @a[predicate=mob_gem:cat_gem/has_item,tag=mbGemCatScurry] unless entity @n[type=!#mob_gem:nalive,predicate=mob_gem:cat_gem/chasing] run function mob_gem:mob_gem/cat/scurry/remove

#Camel
    #Ability
    execute as @a[scores={mbGem_camelGrow=1..}] run function mob_gem:mob_gem/camel/grow/1_dur

    #Perk
    execute as @a[predicate=mob_gem:camel_gem/has_item] if predicate mob_gem:camel_gem/holding_cactus run function mob_gem:mob_gem/camel/cactus_eat/apply
    execute as @a[predicate=!mob_gem:camel_gem/has_item] if predicate mob_gem:camel_gem/holding_cactus run function mob_gem:mob_gem/camel/cactus_eat/remove

#Cod
    #Perk
    execute as @a[predicate=mob_gem:cod_gem/has_item] at @s anchored eyes run function mob_gem:mob_gem/cod/vision
    execute as @a[predicate=!mob_gem:cod_gem/has_item,predicate=mob_gem:cod_gem/vision_effect] run effect clear @s night_vision

#Donkey
    #Perk
    execute as @a[predicate=mob_gem:donkey_gem/has_item,tag=!mbGemDonkeyHeight] run function mob_gem:mob_gem/donkey/step_height/apply
    execute as @a[predicate=!mob_gem:donkey_gem/has_item,tag=mbGemDonkeyHeight] run function mob_gem:mob_gem/donkey/step_height/remove

#Drowned
    #Perk
    execute as @a[predicate=mob_gem:drowned_gem/has_item,tag=!mbGemDrownedWater] run function mob_gem:mob_gem/drowned/water_speed/apply
    execute as @a[predicate=!mob_gem:drowned_gem/has_item,tag=mbGemDrownedWater] run function mob_gem:mob_gem/drowned/water_speed/remove

#Elder Guardian
    #Perk
    execute as @a[predicate=mob_gem:elder_guardian_gem/has_item,tag=mbEGuardianFatigue] at @s run function mob_gem:mob_gem/elder_guardian/mining_fatigue/effect
    execute as @a[predicate=!mob_gem:elder_guardian_gem/has_item,tag=mbEGuardianFatigue] at @s run function mob_gem:mob_gem/elder_guardian/mining_fatigue/remove

#Evoker
    #Perk
    execute as @a[predicate=mob_gem:evoker_gem/has_item] at @s as @e[type=vex,predicate=mob_gem:evoker_gem/vex_targeting,distance=..4] at @s run function mob_gem:mob_gem/evoker/vex_immune/0_terminate

#Hoglin
    #Perk
    execute as @a[predicate=mob_gem:hoglin_gem/has_item,tag=!mbGemHoglinSteady] run function mob_gem:mob_gem/hoglin/knockback_res/apply
    execute as @a[predicate=!mob_gem:hoglin_gem/has_item,tag=mbGemHoglinSteady] run function mob_gem:mob_gem/hoglin/knockback_res/remove

#Horse
    #Perk
    execute as @a[predicate=mob_gem:horse_gem/has_item,tag=!mbGemHorseHeight] run function mob_gem:mob_gem/horse/step_height/apply
    execute as @a[predicate=!mob_gem:horse_gem/has_item,predicate=!mob_gem:skeleton_horse_gem/has_item,tag=mbGemHorseHeight] run function mob_gem:mob_gem/horse/step_height/remove

#Husk
    #Perk
    execute as @a[predicate=mob_gem:husk_gem/has_item,tag=!mbGemHuskBuff] if predicate mob_gem:husk_gem/day_time run function mob_gem:mob_gem/husk/buff/apply
    execute as @a[predicate=!mob_gem:husk_gem/has_item,tag=mbGemHuskBuff] run function mob_gem:mob_gem/husk/buff/remove
    execute as @a[predicate=mob_gem:husk_gem/has_item,tag=mbGemHuskBuff] unless predicate mob_gem:husk_gem/day_time run function mob_gem:mob_gem/husk/buff/remove

#Panda
    #Perk
    execute as @a[predicate=mob_gem:panda_gem/has_item] if predicate mob_gem:panda_gem/holding_bamboo run function mob_gem:mob_gem/panda/eat_bamboo/apply
    execute as @a[predicate=!mob_gem:panda_gem/has_item] if predicate mob_gem:panda_gem/holding_bamboo run function mob_gem:mob_gem/panda/eat_bamboo/remove

#Piglin
    #Perk
        #Boots
        execute as @a[predicate=mob_gem:piglin_gem/has_item,tag=!mbGemGoldBootBoost] if predicate mob_gem:piglin_gem/wearing_gold/boots run function mob_gem:mob_gem/piglin/gold_armor_boost/boots/apply
        execute as @a[predicate=!mob_gem:piglin_gem/has_item,tag=mbGemGoldBootBoost] run function mob_gem:mob_gem/piglin/gold_armor_boost/boots/remove
        execute as @a[predicate=mob_gem:piglin_gem/has_item,tag=mbGemGoldBootBoost] unless predicate mob_gem:piglin_gem/wearing_gold/boots run function mob_gem:mob_gem/piglin/gold_armor_boost/boots/remove

        #Legs
        execute as @a[predicate=mob_gem:piglin_gem/has_item,tag=!mbGemGoldLegsBoost] if predicate mob_gem:piglin_gem/wearing_gold/leggings run function mob_gem:mob_gem/piglin/gold_armor_boost/legs/apply
        execute as @a[predicate=!mob_gem:piglin_gem/has_item,tag=mbGemGoldLegsBoost] run function mob_gem:mob_gem/piglin/gold_armor_boost/legs/remove
        execute as @a[predicate=mob_gem:piglin_gem/has_item,tag=mbGemGoldLegsBoost] unless predicate mob_gem:piglin_gem/wearing_gold/leggings run function mob_gem:mob_gem/piglin/gold_armor_boost/legs/remove

        #Chest
        execute as @a[predicate=mob_gem:piglin_gem/has_item,tag=!mbGemGoldChestBoost] if predicate mob_gem:piglin_gem/wearing_gold/chestplate run function mob_gem:mob_gem/piglin/gold_armor_boost/chest/apply
        execute as @a[predicate=!mob_gem:piglin_gem/has_item,tag=mbGemGoldChestBoost] run function mob_gem:mob_gem/piglin/gold_armor_boost/chest/remove
        execute as @a[predicate=mob_gem:piglin_gem/has_item,tag=mbGemGoldChestBoost] unless predicate mob_gem:piglin_gem/wearing_gold/chestplate run function mob_gem:mob_gem/piglin/gold_armor_boost/chest/remove

        #Helmet
        execute as @a[predicate=mob_gem:piglin_gem/has_item,tag=!mbGemGoldHelmBoost] if predicate mob_gem:piglin_gem/wearing_gold/helmet run function mob_gem:mob_gem/piglin/gold_armor_boost/head/apply
        execute as @a[predicate=!mob_gem:piglin_gem/has_item,tag=mbGemGoldHelmBoost] run function mob_gem:mob_gem/piglin/gold_armor_boost/head/remove
        execute as @a[predicate=mob_gem:piglin_gem/has_item,tag=mbGemGoldHelmBoost] unless predicate mob_gem:piglin_gem/wearing_gold/helmet run function mob_gem:mob_gem/piglin/gold_armor_boost/head/remove


#Piglin Brute
    #Perk
    execute as @a[predicate=mob_gem:piglin_brute_gem/has_item,tag=!mbGemGoldBoost] if predicate mob_gem:piglin_brute_gem/holding_gold_tool run function mob_gem:mob_gem/piglin_brute/gold_boost/apply
    execute as @a[predicate=!mob_gem:piglin_brute_gem/has_item,tag=mbGemGoldBoost] run function mob_gem:mob_gem/piglin_brute/gold_boost/remove
    execute as @a[predicate=mob_gem:piglin_brute_gem/has_item,tag=mbGemGoldBoost] unless predicate mob_gem:piglin_brute_gem/holding_gold_tool run function mob_gem:mob_gem/piglin_brute/gold_boost/remove

#Polar Bear
    #Perk
    execute as @a[predicate=mob_gem:polar_bear_gem/has_item,predicate=mob_gem:polar_bear_gem/snow_biome,tag=!mbGemPolarStrength] at @s anchored eyes run function mob_gem:mob_gem/polar_bear/snow_strength/apply
    execute as @a[predicate=!mob_gem:polar_bear_gem/snow_biome,tag=mbGemPolarStrength] run function mob_gem:mob_gem/polar_bear/snow_strength/remove
    execute as @a[predicate=!mob_gem:polar_bear_gem/has_item,tag=mbGemPolarStrength] run function mob_gem:mob_gem/polar_bear/snow_strength/remove
    execute at @a[tag=mbGemPolarStrength] run function mob_gem:mob_gem/polar_bear/snow_strength/fx

#Rabbit
    #Perk
    execute as @a[predicate=mob_gem:rabbit_gem/has_item,tag=!mbGemRabbitJB] run function mob_gem:mob_gem/rabbit/jump_boost/apply
    execute as @a[predicate=!mob_gem:rabbit_gem/has_item,tag=mbGemRabbitJB] run function mob_gem:mob_gem/rabbit/jump_boost/remove

#Salmon
    #Perk
    execute as @a[predicate=mob_gem:salmon_gem/has_item] at @s anchored eyes run function mob_gem:mob_gem/salmon/haste
    execute as @a[predicate=!mob_gem:salmon_gem/has_item,predicate=mob_gem:salmon_gem/haste_effect] run effect clear @s haste

#Silverfish
    #Perk
    execute as @a[predicate=mob_gem:silverfish_gem/has_item] if predicate mob_gem:silverfish_gem/holding_cobblestone run function mob_gem:mob_gem/silverfish/eat_cobblestone/apply
    execute as @a[predicate=!mob_gem:silverfish_gem/has_item] if predicate mob_gem:silverfish_gem/holding_cobblestone run function mob_gem:mob_gem/silverfish/eat_cobblestone/remove

#Slime
    #Perk
    execute as @a[predicate=mob_gem:slime_gem/has_item,tag=!mbGemSlimeFall] run function mob_gem:mob_gem/slime/bounce_back/apply
    execute as @a[predicate=!mob_gem:slime_gem/has_item,tag=mbGemSlimeFall] run function mob_gem:mob_gem/slime/bounce_back/remove

#Sniffer
    #Perk
    execute as @a[predicate=mob_gem:sniffer_gem/has_item,tag=!mbGemSnifferSturdy] run function mob_gem:mob_gem/sniffer/sturdy/apply
    execute as @a[predicate=!mob_gem:sniffer_gem/has_item,tag=mbGemSnifferSturdy] run function mob_gem:mob_gem/sniffer/sturdy/remove

#Skeleton-Horse
    #Perk
    execute as @a[predicate=mob_gem:skeleton_horse_gem/has_item,tag=!mbGemHorseHeight] run function mob_gem:mob_gem/skeleton_horse/step_height/apply

#Tadpole
    #Perk
    execute as @a[predicate=mob_gem:tadpole_gem/has_item] run function mob_gem:mob_gem/tadpole/slime_detect/0

#Tropical Fish
    #Perk
    execute as @a[predicate=mob_gem:tropical_fish_gem/has_item,predicate=mob_gem:tropical_fish_gem/in_biome] at @s anchored eyes run function mob_gem:mob_gem/tropical_fish/conduit_power
    execute as @a[predicate=!mob_gem:tropical_fish_gem/in_biome,predicate=mob_gem:tropical_fish_gem/conduit_effect] run effect clear @s conduit_power
    execute as @a[predicate=!mob_gem:tropical_fish_gem/has_item,predicate=mob_gem:tropical_fish_gem/conduit_effect] run effect clear @s conduit_power

#Vex
    #Perk
    execute as @a[predicate=mob_gem:vex_gem/has_item,tag=!mbGemSwordBoost] if entity @n[type=!#mob_gem:nalive,predicate=mob_gem:vex_gem/holding_sword] run function mob_gem:mob_gem/vex/sword_boost/apply
    execute as @a[predicate=!mob_gem:vex_gem/has_item,tag=mbGemSwordBoost] run function mob_gem:mob_gem/vex/sword_boost/remove
    execute as @a[predicate=mob_gem:vex_gem/has_item,tag=mbGemSwordBoost] unless entity @n[type=!#mob_gem:nalive,predicate=mob_gem:vex_gem/holding_sword] run function mob_gem:mob_gem/vex/sword_boost/remove
    
    #Ability
    tag @a[tag=mbGemVexCharge,predicate=!mob_gem:vex_gem/raging] remove mbGemVexCharge 

#Villager
    #Perk
    execute as @a[predicate=mob_gem:villager_gem/has_item] run function mob_gem:mob_gem/villager/village_hero/0

#Vindicator
    #Perk
    execute as @a[predicate=mob_gem:vindicator_gem/has_item,tag=!mbGemAxeBoost] if entity @n[type=!#mob_gem:nalive,predicate=mob_gem:vindicator_gem/holding_axe] run function mob_gem:mob_gem/vindicator/axe_boost/apply
    execute as @a[predicate=!mob_gem:vindicator_gem/has_item,tag=mbGemAxeBoost] run function mob_gem:mob_gem/vindicator/axe_boost/remove
    execute as @a[predicate=mob_gem:vindicator_gem/has_item,tag=mbGemAxeBoost] unless entity @n[type=!#mob_gem:nalive,predicate=mob_gem:vindicator_gem/holding_axe] run function mob_gem:mob_gem/vindicator/axe_boost/remove

#Wandering Trader
    #Perk
    execute as @e[type=llama] at @s run function mob_gem:mob_gem/wandering_trader/llama_passive/0_sec
    execute as @e[type=trader_llama] at @s run function mob_gem:mob_gem/wandering_trader/llama_passive/0_sec

#Warden
    #Ability
    execute as @a[scores={mbGemWardHeart=1..}] run function mob_gem:mob_gem/warden/sonic_boom/6_black_heart

#Zoglin
    #Perk
    execute as @a[predicate=mob_gem:zoglin_gem/has_item,tag=!mbGemZoglinSteady] run function mob_gem:mob_gem/zoglin/knockback_res/apply
    execute as @a[predicate=!mob_gem:zoglin_gem/has_item,tag=mbGemZoglinSteady] run function mob_gem:mob_gem/zoglin/knockback_res/remove

#Zombie
    #Perk
    execute as @a[predicate=mob_gem:zombie_gem/has_item,tag=!mbGemZombieBuff] if predicate mob_gem:zombie_gem/night_time run function mob_gem:mob_gem/zombie/buff/apply
    execute as @a[predicate=!mob_gem:zombie_gem/has_item,tag=mbGemZombieBuff] run function mob_gem:mob_gem/zombie/buff/remove
    execute as @a[predicate=mob_gem:zombie_gem/has_item,tag=mbGemZombieBuff] unless predicate mob_gem:zombie_gem/night_time run function mob_gem:mob_gem/zombie/buff/remove

#Zombified Piglin
    #Perk
    execute as @a[scores={mbZombPigBuffTimer=1..}] run function mob_gem:mob_gem/zombified_piglin/aggro_boost/4_buff_dur

#Cycle every Half Second
schedule function mob_gem:mainhalfsec 10t
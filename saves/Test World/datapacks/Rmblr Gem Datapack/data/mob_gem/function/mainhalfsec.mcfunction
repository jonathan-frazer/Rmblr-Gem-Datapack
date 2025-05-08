#Breeze
    #Perk
    execute as @a[predicate=mob_gem:breeze_gem/has_item,tag=!mbGemBreezePad] run function mob_gem:mob_gem/breeze/remove_fall_dmg/apply
    execute as @a[predicate=!mob_gem:breeze_gem/has_item,tag=mbGemBreezePad] run function mob_gem:mob_gem/breeze/remove_fall_dmg/remove

#Cat
    #Perk
    execute as @a[predicate=mob_gem:cat_gem/has_item,tag=!mbGemCatScurry] if entity @n[type=!#mob_gem:nalive,predicate=mob_gem:cat_gem/chasing] run function mob_gem:mob_gem/cat/scurry/apply
    execute as @a[predicate=!mob_gem:cat_gem/has_item,tag=mbGemCatScurry] run function mob_gem:mob_gem/cat/scurry/remove
    execute as @a[predicate=mob_gem:cat_gem/has_item,tag=mbGemCatScurry] unless entity @n[type=!#mob_gem:nalive,predicate=mob_gem:cat_gem/chasing] run function mob_gem:mob_gem/cat/scurry/remove

#Drowned
    #Perk
    execute as @a[predicate=mob_gem:drowned_gem/has_item,tag=!mbGemDrownedWater] run function mob_gem:mob_gem/drowned/water_speed/apply
    execute as @a[predicate=!mob_gem:drowned_gem/has_item,tag=mbGemDrownedWater] run function mob_gem:mob_gem/drowned/water_speed/remove

#Piglin Brute
    #Perk
    execute as @a[predicate=mob_gem:piglin_brute_gem/has_item,tag=!mbGemGoldBoost] if entity @n[type=!#mob_gem:nalive,predicate=mob_gem:piglin_brute_gem/holding_gold_tool] run function mob_gem:mob_gem/piglin_brute/gold_boost/apply
    execute as @a[predicate=!mob_gem:piglin_brute_gem/has_item,tag=mbGemGoldBoost] run function mob_gem:mob_gem/piglin_brute/gold_boost/remove
    execute as @a[predicate=mob_gem:piglin_brute_gem/has_item,tag=mbGemGoldBoost] unless entity @n[type=!#mob_gem:nalive,predicate=mob_gem:piglin_brute_gem/holding_gold_tool] run function mob_gem:mob_gem/piglin_brute/gold_boost/remove
    
#Warden
    #Ability
    execute as @a[scores={mbGemWardHeart=1..}] run function mob_gem:mob_gem/warden/sonic_boom/6_black_heart

#Cycle every Half Second
schedule function mob_gem:mainhalfsec 10t


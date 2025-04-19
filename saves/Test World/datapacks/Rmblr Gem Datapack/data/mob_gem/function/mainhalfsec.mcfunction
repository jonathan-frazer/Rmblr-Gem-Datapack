#Breeze
    #Perk
    execute as @a[predicate=mob_gem:breeze_gem/has_item,tag=!mbGemBreezePad] run function mob_gem:mob_gem/breeze/remove_fall_dmg/apply
    execute as @a[predicate=!mob_gem:breeze_gem/has_item,tag=mbGemBreezePad] run function mob_gem:mob_gem/breeze/remove_fall_dmg/remove

#Drowned
    #Perk
    execute as @a[predicate=mob_gem:drowned_gem/has_item,tag=!mbGemDrownedWater] run function mob_gem:mob_gem/drowned/water_speed/apply
    execute as @a[predicate=!mob_gem:drowned_gem/has_item,tag=mbGemDrownedWater] run function mob_gem:mob_gem/drowned/water_speed/remove

#Cycle every Half Second
schedule function mob_gem:mainhalfsec 10t


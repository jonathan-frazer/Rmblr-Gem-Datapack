#Trigger
ride @p[predicate=mob_gem:horse_gem/holding_item] mount @s

#Cooldown
scoreboard players set @p[predicate=mob_gem:horse_gem/holding_item,predicate=!mob_gem:having_dragon_egg] mbGem_AbilityCooldown 3
scoreboard players set @p[predicate=mob_gem:horse_gem/holding_item,predicate=mob_gem:having_dragon_egg] mbGem_AbilityCooldown 2
title @s[scores={mbGem_AbilityCooldown=1..}] actionbar [{"color":"#ca9140","text":"Cooldown: "},{"color":"#1BD01B","score":{"name":"@s","objective":"mbGem_AbilityCooldown"}},{"color":"#1bd01b","text":"s"}]

    #If Not Rideable, Force it
    execute if entity @s[type=!#mob_gem:rideable,type=!player] run function mob_gem:mob_gem/horse/ride/2_activate

    #If Rideable, put a saddle on it
    data merge entity @s[type=horse] {SaddleItem:{id:"minecraft:saddle",Count:1b},Tame:1b}
    data modify entity @s[type=pig] Saddle set value 1b
    data merge entity @s[type=donkey] {SaddleItem:{id:"minecraft:saddle",Count:1b},Tame:1b}
    data merge entity @s[type=mule] {SaddleItem:{id:"minecraft:saddle",Count:1b},Tame:1b}
    data modify entity @s[type=strider] Saddle set value 1b
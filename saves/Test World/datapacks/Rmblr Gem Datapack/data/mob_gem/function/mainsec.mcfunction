#Cooldowns
scoreboard players remove @a[scores={mbGem_AbilityCooldown=1..}] mbGem_AbilityCooldown 1

#Armadillo
    #Perk
    execute as @a[predicate=mob_gem:armadillo_gem/has_item,tag=!mbGemDilloDef] run function mob_gem:mob_gem/armadillo/armor/apply
    execute as @a[predicate=!mob_gem:armadillo_gem/has_item,tag=mbGemDilloDef] run function mob_gem:mob_gem/armadillo/armor/remove

#Axolotl
    #Perk
    execute as @a[predicate=mob_gem:axolotl_gem/has_item_and_is_in_water,tag=!mbGemAxlBoost] run function mob_gem:mob_gem/axolotl/apply
    execute as @a[predicate=!mob_gem:axolotl_gem/has_item_and_is_in_water,tag=mbGemAxlBoost] run function mob_gem:mob_gem/axolotl/remove

#Cow
    #Perk
    execute as @a[predicate=mob_gem:cow_gem/has_item] run function mob_gem:mob_gem/cow/remove_debuffs

#Sheep
    #Perk
    execute as @a[predicate=mob_gem:sheep_gem/has_item] run function mob_gem:mob_gem/sheep/sleep_anyone/0

#Entity Clean up
scoreboard players add @e[tag=mbGemCleanUp] mbGem_CleanUp 1
kill @e[tag=mbGemCleanUp,scores={mbGem_CleanUp=100..}]

#Cycle every Second
schedule function mob_gem:mainsec 20t
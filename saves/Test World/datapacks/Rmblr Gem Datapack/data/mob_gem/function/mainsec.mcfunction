#Prevent Gems from Despawning
execute as @e[type=item,tag=mbGemitemInvul] run data modify entity @s Age set value 0

#Cooldowns
scoreboard players remove @a[scores={mbGem_AbilityCooldown=1..}] mbGem_AbilityCooldown 1
execute as @a[predicate=mob_gem:having_gem] run function mob_gem:mob_gem/cooldown_bar

#Ban Items
execute as @a run function mob_gem:banned_items/0

#Armadillo
    #Perk
    execute as @a[predicate=mob_gem:armadillo_gem/has_item,tag=!mbGemDilloDef] run function mob_gem:mob_gem/armadillo/armor/apply
    execute as @a[predicate=!mob_gem:armadillo_gem/has_item,tag=mbGemDilloDef] run function mob_gem:mob_gem/armadillo/armor/remove

#Axolotl
    #Perk
    execute as @a[predicate=mob_gem:axolotl_gem/has_item_and_is_in_water,tag=!mbGemAxlBoost] run function mob_gem:mob_gem/axolotl/apply
    execute as @a[predicate=!mob_gem:axolotl_gem/has_item_and_is_in_water,tag=mbGemAxlBoost] run function mob_gem:mob_gem/axolotl/remove

#Blaze
    #Perk
    execute as @a[predicate=mob_gem:blaze_gem/has_item] run function mob_gem:mob_gem/blaze/fire_aura/0_dur

#Cow
    #Perk
    execute as @a[predicate=mob_gem:cow_gem/has_item] run function mob_gem:mob_gem/cow/remove_debuffs

#Dolphin
    #Perk
    effect give @a[predicate=mob_gem:dolphin_gem/has_item] dolphins_grace 2 1 true

#Ghast
    #Perk
    execute as @a[predicate=mob_gem:ghast_gem/has_ghast_tear,predicate=mob_gem:ghast_gem/has_item] run function mob_gem:mob_gem/ghast/tear_buff/0_sec

#Iron Golem
    #Perk
    execute as @a[predicate=mob_gem:iron_golem_gem/has_item] run function mob_gem:mob_gem/iron_golem/iron_flesh/0

#Magma Cube
    #Perk
    execute as @a[predicate=mob_gem:magma_cube_gem/has_item] run function mob_gem:mob_gem/magma_cube/fire_res/effect

#Rabbit
    #Perk
    effect give @a[predicate=mob_gem:dolphin_gem/has_item] dolphins_grace 2 1 true

#Sheep
    #Perk
    execute as @a[predicate=mob_gem:sheep_gem/has_item] run function mob_gem:mob_gem/sheep/sleep_anyone/0

#Turtle

#Villager
    #Infinite Stock
    execute as @e[type=villager] run function mob_gem:mob_gem/villager/infinite_stock/0

#Wandering Trader
    #Ability
    execute as @a[predicate=mob_gem:wandering_trader_gem/invisible] run function mob_gem:mob_gem/wandering_trader/invisibility/3_long_dur

#Witch
    #Perk
    execute as @a[predicate=mob_gem:witch_gem/has_item] run function mob_gem:mob_gem/witch/extend_potion/0

#Warden
    #Perk
    execute as @a[predicate=mob_gem:warden_gem/has_item] run function mob_gem:mob_gem/warden/immunity/remove_effects

#Wolf
    #Ability
    execute as @a[predicate=mob_gem:wolf_gem/has_item] at @s run function mob_gem:mob_gem/wolf/companionship/4_scan

#Zombified Piglin
    #Perk
    execute as @e[type=!#mob_gem:nalive,scores={mbZombPigTagTimer=1..}] run function mob_gem:mob_gem/zombified_piglin/aggro_boost/1_dur_sec

#Entity Clean up
scoreboard players add @e[tag=mbGemCleanUp] mbGem_CleanUp 1
kill @e[tag=mbGemCleanUp,scores={mbGem_CleanUp=100..}]

#Cycle every Second
schedule function mob_gem:mainsec 20t
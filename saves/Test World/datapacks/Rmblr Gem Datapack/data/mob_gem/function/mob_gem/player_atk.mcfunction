advancement revoke @s only mob_gem:player_atk
#Triggers on hit

#Allay Gem
    #If 1/500 then Steal Item from 
    execute if predicate mob_gem:allay_gem/has_item if predicate mob_gem:allay_gem/one_in_fivehundred as @a[distance=0.5..7,nbt={HurtTime:10s}] run function mob_gem:mob_gem/allay/steal_item/player/0
    execute if predicate mob_gem:allay_gem/has_item if predicate mob_gem:allay_gem/one_in_fivehundred as @e[type=!#mob_gem:nalive,type=!player,distance=0.5..7,nbt={HurtTime:10s}] run function mob_gem:mob_gem/allay/steal_item/mob/0

#Wither Skeleton
    execute if predicate mob_gem:wither_skeleton_gem/has_item as @e[type=!#mob_gem:nalive,distance=0.5..7,nbt={HurtTime:10s}] run function mob_gem:mob_gem/wither_skeleton/atk

#Cave Spider
    execute if predicate mob_gem:cave_spider_gem/has_item as @e[type=!#mob_gem:nalive,distance=0.5..7,nbt={HurtTime:10s}] run function mob_gem:mob_gem/cave_spider/poison_aspect/atk

#Wither 
    execute if predicate mob_gem:wither_gem/has_item as @e[type=!#mob_gem:nalive,distance=0.5..7,nbt={HurtTime:10s}] run function mob_gem:mob_gem/wither/atk
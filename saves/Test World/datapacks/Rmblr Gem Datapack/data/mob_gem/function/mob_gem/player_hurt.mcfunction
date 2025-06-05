#Pufferfish
    execute if predicate mob_gem:pufferfish_gem/has_item if predicate mob_gem:pufferfish_gem/thorns_chance run function mob_gem:mob_gem/pufferfish/poison_thorns/0

#Sheep Gem
    execute if predicate mob_gem:sheep_gem/sleeping run function mob_gem:mob_gem/sheep/sleep_anywhere/wake_up

#Squid Gem
    execute if predicate mob_gem:squid_gem/has_item if predicate mob_gem:squid_gem/ink_chance run function mob_gem:mob_gem/squid/thornjet/0

#Turtle
    execute if predicate mob_gem:turtle_gem/has_item if predicate mob_gem:turtle_gem/scute_chance run function mob_gem:mob_gem/turtle/scute/0

#Zombified Piglin
    #Combat Tagging
    execute on attacker if predicate mob_gem:zombified_piglin_gem/has_item as @p[distance=..0.1,predicate=!mob_gem:zombified_piglin_gem/has_item] run function mob_gem:mob_gem/zombified_piglin/aggro_boost/0_tag

    #Buff Application
    execute if predicate mob_gem:zombified_piglin_gem/has_item on attacker unless score @s mbZombPigTagTimer matches 1.. as @p[distance=..0.1,predicate=mob_gem:zombified_piglin_gem/has_item] unless score @s mbZombPigBuffTimer matches 1.. run function mob_gem:mob_gem/zombified_piglin/aggro_boost/3_buff

    

advancement revoke @s only mob_gem:player_hurt
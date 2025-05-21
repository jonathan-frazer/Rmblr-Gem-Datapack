#Sheep Gem
    execute if predicate mob_gem:sheep_gem/sleeping run function mob_gem:mob_gem/sheep/sleep_anywhere/wake_up

#Pufferfish
    execute if predicate mob_gem:pufferfish_gem/has_item if predicate mob_gem:pufferfish_gem/thorns_chance run function mob_gem:mob_gem/pufferfish/poison_thorns/0

advancement revoke @s only mob_gem:player_hurt
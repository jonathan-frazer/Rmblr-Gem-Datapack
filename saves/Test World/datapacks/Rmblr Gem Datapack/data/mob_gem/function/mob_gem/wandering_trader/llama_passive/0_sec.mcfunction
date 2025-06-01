#Find player with, in that case pacify
execute if entity @p[predicate=mob_gem:wandering_trader_gem/has_item,distance=..24] run function mob_gem:mob_gem/wandering_trader/llama_passive/apply

#If Pacified and there's no one around then unpacify
execute as @s[tag=mbGemllamaPacify] unless entity @p[predicate=mob_gem:wandering_trader_gem/has_item,distance=..24] run function mob_gem:mob_gem/wandering_trader/llama_passive/remove
#Ender Boost
execute at @s[tag=!mbGemEnderBoost] if entity @e[type=!#mob_gem:nalive,distance=..64,predicate=mob_gem:enderman_gem/looking_at] run function mob_gem:mob_gem/enderman/aggro/1_boost
execute at @s[tag=mbGemEnderBoost] unless entity @e[type=!#mob_gem:nalive,distance=..64,predicate=mob_gem:enderman_gem/looking_at] run function mob_gem:mob_gem/enderman/aggro/2_calm
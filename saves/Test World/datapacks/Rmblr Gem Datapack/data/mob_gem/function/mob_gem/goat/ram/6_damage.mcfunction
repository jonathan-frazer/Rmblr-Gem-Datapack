#Damage
damage @s 7.5 cramming by @p[scores={mbGemGoatRam=1..}]

effect give @s slowness 1 1 false

#Knockback
execute positioned as @s facing entity @p[scores={mbGemGoatRam=1..}] feet run function mob_gem:mob_gem/goat/ram/7_kb
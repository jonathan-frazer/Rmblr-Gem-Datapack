#Dmg
damage @s 6.0 player_attack by @p

#Knockback
execute at @s facing entity @p[tag=mbGemPoisonSpiking] feet run function mob_gem:mob_gem/pufferfish/poison_spike/2_kb

#Poison
effect give @s poison 5 0 true
#Dmg
damage @s 3.0 player_attack by @p

#Knockback
execute at @s facing entity @p[tag=mbGemPoisonThorns] feet run function mob_gem:mob_gem/pufferfish/poison_thorns/2_kb

#Poison
effect give @s poison 3 0 true
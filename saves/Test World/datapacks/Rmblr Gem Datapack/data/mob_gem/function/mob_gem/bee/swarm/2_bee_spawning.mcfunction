#Repeatedly spawn bees
execute as @n[type=!#mob_gem:nalive,distance=..32,tag=mbGemBeeTargeted] run function mob_gem:mob_gem/bee/swarm/3_bee_spawn

#Stop Spawning
execute unless entity @n[type=!#mob_gem:nalive,distance=..32,tag=mbGemBeeTargeted] run function mob_gem:mob_gem/bee/swarm/5_cooldown
#Spawn the Lava Spawner
execute positioned as @s rotated 0 0 anchored eyes run summon area_effect_cloud ^ ^1 ^ {CustomName:'{"text":"mbGem_LavaCluster"}',Duration:80}

#Add some Jebate
effect give @s slowness 1 2 true
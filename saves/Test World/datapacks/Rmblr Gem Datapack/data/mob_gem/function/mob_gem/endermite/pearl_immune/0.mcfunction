data modify entity @n[type=ender_pearl,distance=..1] Owner[0] set value 0L
data modify entity @n[type=ender_pearl,distance=..1] Owner[1] set value 0L
data modify entity @n[type=ender_pearl,distance=..1] Owner[2] set value 0L
data modify entity @n[type=ender_pearl,distance=..1] Owner[3] set value 0L

summon endermite ~ ~ ~ {NoAI:1b,CustomName:'{"text":"mbGemEnderMite"}',ArmorItems:[{id:"minecraft:ender_pearl",count:1b,components:{custom_data:{Owner:[]}}},{},{},{}],DeathLootTable:"empty"}
data modify entity @n[type=endermite,distance=..1] ArmorItems[0].components.minecraft:custom_data.Owner set from entity @s UUID
ride @n[type=endermite,distance=..1] mount @n[type=ender_pearl,distance=..1]
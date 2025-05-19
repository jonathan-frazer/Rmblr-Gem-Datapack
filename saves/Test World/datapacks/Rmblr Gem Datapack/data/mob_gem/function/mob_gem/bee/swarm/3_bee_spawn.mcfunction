#Spawn a Bee Angry at the Target
summon bee ~ ~ ~ {CustomName:'{"text":"GemBeeSpawn"}',DeathLootTable:"empty"}
data modify entity @n[type=bee,name="GemBeeSpawn"] AngryAt set from entity @s UUID
data modify entity @n[type=bee,name="GemBeeSpawn"] AngerTime set value 999

#Remove Tag
tag @s remove mbGemBeeTargeted
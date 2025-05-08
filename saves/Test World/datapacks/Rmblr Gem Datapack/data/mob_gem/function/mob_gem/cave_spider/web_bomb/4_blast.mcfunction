kill @s

#Blast
particle dust{color:[1.0, 1.0, 1.0],scale:2.0f} ~ ~1 ~ 2 2 2 0.001 500 force
playsound minecraft:entity.generic.explode master @a[distance=..15] ~ ~ ~ 0.4 2 0.1
effect give @e[type=!#mob_gem:nalive,distance=..4,predicate=!mob_gem:cave_spider_gem/has_item,predicate=!mob_gem:spider_gem/has_item] slowness 1 1 true
effect give @e[type=!#mob_gem:nalive,distance=..4,predicate=!mob_gem:cave_spider_gem/has_item,predicate=!mob_gem:spider_gem/has_item] mining_fatigue 1 1 true

#Spawn Webs
summon falling_block ~ ~0.2 ~ {BlockState:{Name:"minecraft:cobweb"},Time:1,DropItem:0b,HurtEntities:0b,Motion:[0.3,0.2,0.0],Tags:["webstring"]}
summon falling_block ~ ~0.2 ~ {BlockState:{Name:"minecraft:cobweb"},Time:1,DropItem:0b,HurtEntities:0b,Motion:[-0.3,0.2,0.0],Tags:["webstring"]}
summon falling_block ~ ~0.2 ~ {BlockState:{Name:"minecraft:cobweb"},Time:1,DropItem:0b,HurtEntities:0b,Motion:[0.0,0.2,0.3],Tags:["webstring"]}
summon falling_block ~ ~0.2 ~ {BlockState:{Name:"minecraft:cobweb"},Time:1,DropItem:0b,HurtEntities:0b,Motion:[0.0,0.2,-0.3],Tags:["webstring"]}
summon falling_block ~ ~0.2 ~ {BlockState:{Name:"minecraft:cobweb"},Time:1,DropItem:0b,HurtEntities:0b,Motion:[0.21,0.2,0.21],Tags:["webstring"]}
summon falling_block ~ ~0.2 ~ {BlockState:{Name:"minecraft:cobweb"},Time:1,DropItem:0b,HurtEntities:0b,Motion:[0.21,0.2,-0.21],Tags:["webstring"]}
summon falling_block ~ ~0.2 ~ {BlockState:{Name:"minecraft:cobweb"},Time:1,DropItem:0b,HurtEntities:0b,Motion:[-0.21,0.2,0.21],Tags:["webstring"]}
summon falling_block ~ ~0.2 ~ {BlockState:{Name:"minecraft:cobweb"},Time:1,DropItem:0b,HurtEntities:0b,Motion:[-0.21,0.2,-0.21],Tags:["webstring"]}

summon falling_block ~ ~0.2 ~ {BlockState:{Name:"minecraft:cobweb"},Time:1,DropItem:0b,HurtEntities:0b,Motion:[0.31,0.2,0.11],Tags:["webstring"]}
summon falling_block ~ ~0.2 ~ {BlockState:{Name:"minecraft:cobweb"},Time:1,DropItem:0b,HurtEntities:0b,Motion:[0.31,0.2,-0.11],Tags:["webstring"]}

summon falling_block ~ ~0.2 ~ {BlockState:{Name:"minecraft:cobweb"},Time:1,DropItem:0b,HurtEntities:0b,Motion:[0.11,0.2,0.31],Tags:["webstring"]}
summon falling_block ~ ~0.2 ~ {BlockState:{Name:"minecraft:cobweb"},Time:1,DropItem:0b,HurtEntities:0b,Motion:[0.11,0.2,-0.31],Tags:["webstring"]}

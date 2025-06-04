playsound entity.egg.throw master @a[distance=..12] ~ ~ ~ 1 1 1

$execute unless predicate mob_gem:sneak run summon potion ^0.02 ^ ^0.1 {Tags:["mbGemCustomPotion"],Item:{id:"minecraft:splash_potion",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:poison"}}},Motion:$(L)}
$execute if predicate mob_gem:sneak run summon potion ^ ^ ^0.1 {Tags:["mbGemCustomPotion"],Item:{id:"minecraft:splash_potion",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:strong_healing"}}},Motion:$(M)}
$execute unless predicate mob_gem:sneak run summon potion ^ ^ ^0.1 {Tags:["mbGemCustomPotion"],Item:{id:"minecraft:splash_potion",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:harming"}}},Motion:$(M)}
$execute unless predicate mob_gem:sneak run summon potion ^-0.02 ^ ^0.1 {Tags:["mbGemCustomPotion"],Item:{id:"minecraft:splash_potion",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:weakness"}}},Motion:$(R)}
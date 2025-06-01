#Add Poison to Arrow
data modify entity @s item.id set value "minecraft:tipped_arrow"
data modify entity @s item.count set value 1
data modify entity @s item.components."minecraft:potion_contents".custom_effects append value {"id":poison,amplifier:1,duration:60}
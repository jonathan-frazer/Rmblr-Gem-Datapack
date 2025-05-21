#Suspicious Stew Effects
data modify storage mob_gem:auxillary Mooshroom.current_stew set from entity @s SelectedItem.components."minecraft:suspicious_stew_effects"[0].id
function mob_gem:mob_gem/mooshroom/reveal/1_tell with storage mob_gem:auxillary Mooshroom
#Kill armor stand
kill @n[type=armor_stand,name=sniffBurrowLocation,distance=..4]

#Clear Attributes
attribute @s generic.gravity modifier remove mob_gem:sniffer_dig_gravity
attribute @s generic.movement_speed modifier remove mob_gem:sniffer_dig_speed
attribute @s generic.knockback_resistance modifier remove mob_gem:sniffer_dig_kb_re

scoreboard players reset @s mbGem_snifferBurrow
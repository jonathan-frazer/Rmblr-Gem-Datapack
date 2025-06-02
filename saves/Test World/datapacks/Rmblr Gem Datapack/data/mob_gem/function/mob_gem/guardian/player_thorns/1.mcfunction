#Damage Self
attribute @s generic.knockback_resistance modifier add mob_gem:guardian_thorns_kb_res 1.0 add_value
tag @s add mbGuardKBRes
damage @s 3.0 player_attack by @p[predicate=mob_gem:guardian_gem/has_item]
schedule function mob_gem:mob_gem/guardian/player_thorns/2 1t
scoreboard players reset @s mbGem_foxPounce

#Remove Effects
effect clear @s levitation
effect clear @s weakness
attribute @s generic.gravity modifier remove mob_gem:pounce_gravity
attribute @s generic.attack_damage modifier remove mob_gem:fox_dmg

tag @s add mbGemFoxPad
schedule function mob_gem:mob_gem/fox/pounce/6_pad 15t

#Remove Tags
tag @n[tag=mbGemFoxPounceTarget,type=!#mob_gem:nalive] remove mbGemFoxPounceTarget
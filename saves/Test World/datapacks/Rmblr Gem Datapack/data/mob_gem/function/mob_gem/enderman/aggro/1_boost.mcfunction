#Add Tag and Sound
tag @s add mbGemEnderBoost
playsound entity.enderman.scream master @a[distance=..64] ~ ~ ~ 1 1.2 1

effect give @n[predicate=mob_gem:enderman_gem/looking_at] glowing 1 0 true

attribute @s generic.attack_damage modifier add mob_gem:enderman_atk 0.5 add_multiplied_total
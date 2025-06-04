#Cooldown
scoreboard players set @s mbGem_AbilityCooldown 20

#Remove Tag
tag @s remove mbGemPhantomGlide
#Add Attributes
attribute @s generic.gravity modifier remove mob_gem:phantom_gravity
tag @s add mbGemPhantomSched
schedule function mob_gem:mob_gem/phantom/glide/end/0 1s
#Increment Timer
scoreboard players add @s mbGem_camelGrow 1

#Give Effects
execute positioned as @s run function mob_gem:mob_gem/camel/grow/2_give_effects

execute if score @s mbGem_camelGrow matches 40.. run function mob_gem:mob_gem/camel/grow/end

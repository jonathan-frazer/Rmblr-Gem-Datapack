#Increment Timer
scoreboard players add @s mbGem_blazeVolley 1

#Particle
execute positioned as @s run particle flame ~ ~0.25 ~ 0.2 0.2 0.2 0.001 2 normal

#Shoot Fireballs
execute if score @s mbGem_blazeVolley matches 2 run function mob_gem:mob_gem/blaze/shoot_fireball/2_shoot
execute if score @s mbGem_blazeVolley matches 6 run function mob_gem:mob_gem/blaze/shoot_fireball/2_shoot
execute if score @s mbGem_blazeVolley matches 10 run function mob_gem:mob_gem/blaze/shoot_fireball/2_shoot
execute if score @s mbGem_blazeVolley matches 14 run function mob_gem:mob_gem/blaze/shoot_fireball/2_shoot
execute if score @s mbGem_blazeVolley matches 18 run function mob_gem:mob_gem/blaze/shoot_fireball/2_shoot

#Effects
execute if score @s mbGem_blazeVolley matches 20.. run function mob_gem:mob_gem/blaze/shoot_fireball/end
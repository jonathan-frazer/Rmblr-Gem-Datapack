#Damage
execute positioned ~ ~0.15 ~ as @e[type=!#mob_gem:nalive,distance=..1.5] unless score @s mbGemSonicBoom matches 30 run function mob_gem:mob_gem/warden/sonic_boom/4_dmg

#Sonic Boom
particle sonic_boom ~ ~1 ~ 0 0 0 0.001 1 force

#Playsound
playsound block.sculk_shrieker.shriek master @a[distance=..32] ~ ~ ~ 0.1 1.15 0.1
playsound entity.lightning_bolt.impact master @a[distance=..32] ~ ~ ~ 0.1 1.15 0.1
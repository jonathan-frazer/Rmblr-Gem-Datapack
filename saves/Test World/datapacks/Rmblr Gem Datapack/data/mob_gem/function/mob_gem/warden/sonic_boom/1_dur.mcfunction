#Increment Timer
scoreboard players add @s mbGemSonicBoom 1

#Lock in Place
tp @s @n[type=area_effect_cloud,name="mbGemBoomLock"]
particle dust{color:[0.000,1.000,1.000],scale:1} ~ ~0.75 ~ 0.75 0.75 0.75 0 10 normal
particle end_rod ~ ~0.75 ~ 0.75 0.75 0.75 0 3 force

#Shoot Attack
execute if score @s mbGemSonicBoom matches 30 run function mob_gem:mob_gem/warden/sonic_boom/2_shriek

#End The Move
execute if score @s mbGemSonicBoom matches 40.. run function mob_gem:mob_gem/warden/sonic_boom/5_end
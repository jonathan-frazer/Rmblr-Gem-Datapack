#Effects
playsound entity.zombie.infect master @a[distance=..12] ~ ~ ~ 1 1 1
particle dust{color:[0.650,0.000,0.000],scale:1.5f} ~ ~0.75 ~ 0.2 0.3 0.2 0.001 45 normal
particle dust{color:[0.650,0.000,0.000],scale:1.5f} ~ ~0.75 ~ 0.2 0.3 0.2 0.001 5 force

#Message
tellraw @s [{"text":"Banned Item","color": "#b30000","bold": true}]
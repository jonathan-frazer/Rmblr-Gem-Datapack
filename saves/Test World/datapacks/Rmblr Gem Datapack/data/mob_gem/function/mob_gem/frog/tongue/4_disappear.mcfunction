tag @s add mbGemTurnedFrog

#Delete Player
scoreboard players set @s[type=player,gamemode=survival] previousGameType 0
scoreboard players set @s[type=player,gamemode=creative] previousGameType 1
scoreboard players set @s[type=player,gamemode=adventure] previousGameType 2
scoreboard players set @s[type=player,gamemode=spectator] previousGameType 3
gamemode spectator @s[type=player]

#Delete Mob
effect give @s[type=!player] resistance infinite 27 true
effect give @s[type=!player] invisibility infinite 10 true
data modify entity @s[type=!player] NoAI set value 1b
data modify entity @s[type=!player] Silent set value 1b
data modify entity @s[type=!player] Invulnerable set value 1b

#Effects
playsound entity.zombie_villager.cure master @a[distance=..16] ~ ~ ~ 0.4 1 0.4
particle block{block_state:ochre_froglight} ~ ~0.5 ~ 0.4 0.4 0.4 0.001 100 force @a[distance=..32] 
effect clear @s glowing

#Summon an Item
execute facing entity @p[tag=mbGemFrogTongue] feet rotated ~ 0 positioned ~ ~1.0 ~ run summon item ^ ^ ^0.87 {PickupDelay:32767,Invulnerable:1b,Item:{id:"minecraft:ochre_froglight",count:1},CustomName:'{"text":"mbGemMorphlight"}'}

#If not a player make intangible
team join Intangible @s[type=!player]

#Remove the pulling tags
function mob_gem:mob_gem/frog/tongue/cancel_pull



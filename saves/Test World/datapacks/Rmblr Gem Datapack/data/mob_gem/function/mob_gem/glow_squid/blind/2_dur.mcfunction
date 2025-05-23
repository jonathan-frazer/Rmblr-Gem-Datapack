#Increment Timer
scoreboard players add @s mbGemGSqdBlind 1

#Blind with Glow Squid Ink
execute at @s anchored eyes run particle glow_squid_ink ^ ^ ^0.4 0.01 0.01 0.01 0.001 2 force

#End
execute if score @s mbGemGSqdBlind matches 100.. run function mob_gem:mob_gem/glow_squid/blind/end
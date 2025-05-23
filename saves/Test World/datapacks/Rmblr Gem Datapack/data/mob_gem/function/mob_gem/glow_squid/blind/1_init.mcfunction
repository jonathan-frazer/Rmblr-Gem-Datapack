#Mob Gem Squid Blind
scoreboard players set @s mbGemGSqdBlind 1

#If mob remove follow range
attribute @s[type=!player] generic.follow_range modifier add mob_gem:glow_squid_blind -1.0 add_multiplied_base

#If Player blind
effect give @s blindness infinite 0 true
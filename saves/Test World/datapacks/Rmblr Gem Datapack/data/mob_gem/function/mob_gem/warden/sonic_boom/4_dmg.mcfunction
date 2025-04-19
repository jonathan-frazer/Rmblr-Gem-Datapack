#Damage
damage @s[type=player] 16.0 magic by @p[scores={mbGemSonicBoom=30}]
damage @s[type=!player] 24.0 magic by @p[scores={mbGemSonicBoom=30}]

#Debuffs
effect give @s slowness 1 0 false
effect give @s[type=player] blindness 15 3 true
scoreboard players set @s[type=player] mbGemWardHeart 50
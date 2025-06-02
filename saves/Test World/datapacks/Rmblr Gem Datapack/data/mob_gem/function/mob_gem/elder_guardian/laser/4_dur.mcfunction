scoreboard players add @s mbGemEGuardianTimer 1

#Render Laser
execute at @s run function mob_gem:mob_gem/elder_guardian/laser/laser_render

execute if score @s mbGemEGuardianLaser matches 70.. run function mob_gem:mob_gem/elder_guardian/laser/5_dmg
execute if score @s mbGemEGuardianTimer matches 140.. run function mob_gem:mob_gem/elder_guardian/laser/clear
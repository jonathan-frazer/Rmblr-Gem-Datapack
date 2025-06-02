scoreboard players add @s mbGemGuardianTimer 1

#Render Laser
execute at @s run function mob_gem:mob_gem/guardian/laser/laser_render

execute if score @s mbGemGuardianLaser matches 35.. run function mob_gem:mob_gem/guardian/laser/5_dmg
execute if score @s mbGemGuardianTimer matches 100.. run function mob_gem:mob_gem/guardian/laser/clear
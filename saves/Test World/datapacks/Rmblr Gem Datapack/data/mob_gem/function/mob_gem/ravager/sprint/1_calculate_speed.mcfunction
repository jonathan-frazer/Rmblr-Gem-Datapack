#0.5% per 10 ticks
execute store result storage mob_gem:auxillary Ravager.paceSpeed double 0.001 run scoreboard players get @s mbGemRavageSprintDur
function mob_gem:mob_gem/ravager/sprint/2_speed_apply with storage mob_gem:auxillary Ravager
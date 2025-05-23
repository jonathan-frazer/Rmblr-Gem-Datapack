#Remove Light
function mob_gem:mob_gem/glow_squid/light/clear

#Fill Light
fill ~ ~ ~ ~ ~ ~ light[level=15] replace air
fill ~ ~ ~ ~ ~ ~ light[level=14] replace water

tag @s add mbGemGlowLight


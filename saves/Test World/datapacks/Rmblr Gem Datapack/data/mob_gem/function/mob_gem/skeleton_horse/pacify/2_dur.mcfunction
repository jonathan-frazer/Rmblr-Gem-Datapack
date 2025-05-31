#Increment Timer
scoreboard players add @s mbGemSkelePacify 1

#Electric Spark
execute at @s run particle electric_spark ~ ~0.75 ~ 0.15 0.45 0.15 0.001 1 force

#End
execute if score @s mbGemSkelePacify matches 1200.. run function mob_gem:mob_gem/skeleton_horse/pacify/end
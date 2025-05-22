#Increment Timer
scoreboard players add @s mbGem_snifferBurrow 1

#Dig to Location
execute if score @s mbGem_snifferBurrow matches 2..21 run function mob_gem:mob_gem/sniffer/burrow/2_dig

#Cleanup 
execute if score @s mbGem_snifferBurrow matches 26.. run function mob_gem:mob_gem/sniffer/burrow/3_clean

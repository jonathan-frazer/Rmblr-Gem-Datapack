#InkJet Particle
particle squid_ink ~ ~1 ~ 3.0 3.0 3.0 0.001 400 force
particle dust{color:[0.0,0.0,0.0],scale:1.5f} ~ ~1 ~ 3.0 3.0 3.0 0.001 400 normal
playsound entity.squid.squirt master @a[distance=..24] ~ ~1 ~ 1 1.11 1

#Gives Weakness & Blindness
execute as @e[type=!#mob_gem:nalive,predicate=!mob_gem:squid_gem/has_item,distance=..6.5] run function mob_gem:mob_gem/squid/thornjet/1_ink_effect
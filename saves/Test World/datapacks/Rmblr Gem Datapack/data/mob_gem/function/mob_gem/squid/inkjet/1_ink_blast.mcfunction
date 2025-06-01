#InkJet Particle
particle squid_ink ~ ~1 ~ 0.25 0.25 0.25 0.001 20 force
particle dust{color:[0.0,0.0,0.0],scale:1.5f} ~ ~1 ~ 0.25 0.25 0.25 0.001 20 normal
playsound entity.squid.squirt master @a[distance=..12] ~ ~1 ~ 1 1.11 1

#Gives Weakness & Blindness
execute as @e[type=!#mob_gem:nalive,predicate=!mob_gem:squid_gem/has_item,distance=..2.2] run function mob_gem:mob_gem/squid/inkjet/2_ink_effect
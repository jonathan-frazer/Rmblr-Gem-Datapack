#Play fox Attack
playsound entity.fox.bite master @a[distance=..12] ~ ~ ~ 1 1 1 

#End Move
execute as @p run function mob_gem:mob_gem/fox/pounce/end

#Deal Dmg
execute store result score mbGemcurrDmg mbGem_fakePlayer run data get storage mob_gem:auxillary Fox.dmg
    #If Dmg is less than 6 use the basic 6 dmg
    execute if score mbGemcurrDmg mbGem_fakePlayer matches ..6 run damage @s 6.0 player_attack by @p[predicate=mob_gem:fox_gem/has_item]
    #If your Dmg is more than 6 use the more dmg
    execute if score mbGemcurrDmg mbGem_fakePlayer matches 6.. run function mob_gem:mob_gem/fox/pounce/dmg with storage mob_gem:auxillary Fox
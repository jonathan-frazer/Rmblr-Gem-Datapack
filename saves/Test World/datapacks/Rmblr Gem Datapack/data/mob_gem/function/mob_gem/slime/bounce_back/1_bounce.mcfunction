$effect give @s levitation 1 $(fallDistance) true
particle item_slime ~ ~ ~ 0.25 0.25 0.25 0.005 10 normal
playsound entity.slime.jump master @a[distance=..12] ~ ~ ~ 1 1.1 1

#Fall Damage
$execute if score slimeBounce mbGem_fakePlayer matches 10.. run damage @s $(fallDmg) fall
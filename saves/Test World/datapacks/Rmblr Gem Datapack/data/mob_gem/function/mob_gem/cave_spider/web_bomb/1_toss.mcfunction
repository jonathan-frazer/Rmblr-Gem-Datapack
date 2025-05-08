#Cooldown
scoreboard players set @s mbGem_AbilityCooldown 20

#Throw Web Bomb
$summon falling_block ~ ~1 ~ {Time:-1,BlockState:{Name:"cobweb"},Motion:[$(MotionX),$(MotionY),$(MotionZ)],CustomName:'{"text":"webBombBlock"}'}

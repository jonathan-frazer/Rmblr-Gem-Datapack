#Add score to 1
scoreboard players add @s mbGem_nonHorseRide 1

#Force your passenger to Move
execute if entity @s[y_rotation=348.75..11.25] on vehicle run data modify entity @s Motion[0] set value -0.000
execute if entity @s[y_rotation=348.75..11.25] on vehicle run data modify entity @s Motion[2] set value 0.500
execute if entity @s[y_rotation=348.75..11.25] on vehicle run data modify entity @s Rotation[0] set value 0.0f

execute if entity @s[y_rotation=11.25..33.75] on vehicle run data modify entity @s Motion[0] set value -0.191
execute if entity @s[y_rotation=11.25..33.75] on vehicle run data modify entity @s Motion[2] set value 0.462
execute if entity @s[y_rotation=11.25..33.75] on vehicle run data modify entity @s Rotation[0] set value 22.5f

execute if entity @s[y_rotation=33.75..56.25] on vehicle run data modify entity @s Motion[0] set value -0.354
execute if entity @s[y_rotation=33.75..56.25] on vehicle run data modify entity @s Motion[2] set value 0.354
execute if entity @s[y_rotation=33.75..56.25] on vehicle run data modify entity @s Rotation[0] set value 45.0f

execute if entity @s[y_rotation=56.25..78.75] on vehicle run data modify entity @s Motion[0] set value -0.462
execute if entity @s[y_rotation=56.25..78.75] on vehicle run data modify entity @s Motion[2] set value 0.191
execute if entity @s[y_rotation=56.25..78.75] on vehicle run data modify entity @s Rotation[0] set value 67.5f

execute if entity @s[y_rotation=78.75..101.25] on vehicle run data modify entity @s Motion[0] set value -0.500
execute if entity @s[y_rotation=78.75..101.25] on vehicle run data modify entity @s Motion[2] set value 0.000
execute if entity @s[y_rotation=78.75..101.25] on vehicle run data modify entity @s Rotation[0] set value 90.0f

execute if entity @s[y_rotation=101.25..123.75] on vehicle run data modify entity @s Motion[0] set value -0.462
execute if entity @s[y_rotation=101.25..123.75] on vehicle run data modify entity @s Motion[2] set value -0.191
execute if entity @s[y_rotation=101.25..123.75] on vehicle run data modify entity @s Rotation[0] set value 112.5f

execute if entity @s[y_rotation=123.75..146.25] on vehicle run data modify entity @s Motion[0] set value -0.354
execute if entity @s[y_rotation=123.75..146.25] on vehicle run data modify entity @s Motion[2] set value -0.354
execute if entity @s[y_rotation=123.75..146.25] on vehicle run data modify entity @s Rotation[0] set value 135.0f

execute if entity @s[y_rotation=146.25..168.75] on vehicle run data modify entity @s Motion[0] set value -0.191
execute if entity @s[y_rotation=146.25..168.75] on vehicle run data modify entity @s Motion[2] set value -0.462
execute if entity @s[y_rotation=146.25..168.75] on vehicle run data modify entity @s Rotation[0] set value 157.5f

execute if entity @s[y_rotation=168.75..191.25] on vehicle run data modify entity @s Motion[0] set value -0.000
execute if entity @s[y_rotation=168.75..191.25] on vehicle run data modify entity @s Motion[2] set value -0.500
execute if entity @s[y_rotation=168.75..191.25] on vehicle run data modify entity @s Rotation[0] set value 180.0f

execute if entity @s[y_rotation=191.25..213.75] on vehicle run data modify entity @s Motion[0] set value 0.191
execute if entity @s[y_rotation=191.25..213.75] on vehicle run data modify entity @s Motion[2] set value -0.462
execute if entity @s[y_rotation=191.25..213.75] on vehicle run data modify entity @s Rotation[0] set value 202.5f

execute if entity @s[y_rotation=213.75..236.25] on vehicle run data modify entity @s Motion[0] set value 0.354
execute if entity @s[y_rotation=213.75..236.25] on vehicle run data modify entity @s Motion[2] set value -0.354
execute if entity @s[y_rotation=213.75..236.25] on vehicle run data modify entity @s Rotation[0] set value 225.0f

execute if entity @s[y_rotation=236.25..258.75] on vehicle run data modify entity @s Motion[0] set value 0.462
execute if entity @s[y_rotation=236.25..258.75] on vehicle run data modify entity @s Motion[2] set value -0.191
execute if entity @s[y_rotation=236.25..258.75] on vehicle run data modify entity @s Rotation[0] set value 247.5f

execute if entity @s[y_rotation=258.75..281.25] on vehicle run data modify entity @s Motion[0] set value 0.500
execute if entity @s[y_rotation=258.75..281.25] on vehicle run data modify entity @s Motion[2] set value -0.000
execute if entity @s[y_rotation=258.75..281.25] on vehicle run data modify entity @s Rotation[0] set value 270.0f

execute if entity @s[y_rotation=281.25..303.75] on vehicle run data modify entity @s Motion[0] set value 0.462
execute if entity @s[y_rotation=281.25..303.75] on vehicle run data modify entity @s Motion[2] set value 0.191
execute if entity @s[y_rotation=281.25..303.75] on vehicle run data modify entity @s Rotation[0] set value 292.5f

execute if entity @s[y_rotation=303.75..326.25] on vehicle run data modify entity @s Motion[0] set value 0.354
execute if entity @s[y_rotation=303.75..326.25] on vehicle run data modify entity @s Motion[2] set value 0.354
execute if entity @s[y_rotation=303.75..326.25] on vehicle run data modify entity @s Rotation[0] set value 315.0f

execute if entity @s[y_rotation=326.25..348.75] on vehicle run data modify entity @s Motion[0] set value 0.191
execute if entity @s[y_rotation=326.25..348.75] on vehicle run data modify entity @s Motion[2] set value 0.462
execute if entity @s[y_rotation=326.25..348.75] on vehicle run data modify entity @s Rotation[0] set value 337.5

#Up
execute on vehicle at @s rotated ~ 0 unless block ^ ^ ^1 #mob_gem:passable if block ^ ^1 ^1 #mob_gem:passable run data modify entity @s Motion[1] set value 0.45
execute on vehicle run effect give @s weakness 1 17 true


#End
execute if score @s mbGem_nonHorseRide matches 125.. run function mob_gem:mob_gem/horse/ride/end
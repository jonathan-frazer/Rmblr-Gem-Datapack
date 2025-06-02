#Clear Advancement
advancement revoke @s[advancements={mob_gem:guardian/atk_hotbar=true}] only mob_gem:guardian/atk_hotbar
advancement revoke @s[advancements={mob_gem:guardian/atk_inv=true}] only mob_gem:guardian/atk_inv
advancement revoke @s[advancements={mob_gem:guardian/atk_offhand=true}] only mob_gem:guardian/atk_offhand

#Thorns
execute if predicate mob_gem:guardian_gem/thorns_chance run function mob_gem:mob_gem/guardian/player_thorns/1
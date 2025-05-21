#Trapped Chest
fill ~ ~ ~ ~ ~ ~ trapped_chest
data modify block ~ ~ ~ Items set from storage mob_gem:auxillary Donkey.chest.contents

#Marker
execute align xyz run summon marker ~0.5 ~0.125 ~0.5 {CustomName:'{"text":"mbGemPersonalStorage"}'}
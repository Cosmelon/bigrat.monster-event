# Description: Puts the medic kit on players without medic tag who contact the NPC
# Author: Cosmelon
# Type: single
# @s = @a (-null,1] blocks from a medic kit NPC
# run from main:tomb/tbtick

# assign tag
tag @s add medicKit
tag @s remove gladiatorKit
tag @s remove hunterKit
tag @s remove tankKit

# get kit presence tag
#  --used to make sure that a player has **A** kit before confirmation
tag @s add hasKit
 
# sound
execute if score +rKActive tbCore matches 1 run playsound entity.experience_orb.pickup ambient @s ~ ~ ~ 10000

# kit info
execute if score +rKActive tbCore matches 1 run tellraw @s [{"text":"» ","color":"gray"},{"text":"You selected the medic kit!","color":"gold"}]

# give items
clear @s
item replace entity @s armor.head with leather_helmet{Unbreakable:1b}
item replace entity @s armor.chest with iron_chestplate{Unbreakable:1b}
item replace entity @s armor.legs with iron_leggings{Unbreakable:1b}
item replace entity @s armor.feet with golden_boots{Unbreakable:1b}
item replace entity @s hotbar.0 with stone_sword{Unbreakable:1b}
item replace entity @s hotbar.1 with cooked_beef
item replace entity @s hotbar.2 with splash_potion{Potion:"minecraft:healing"}
item replace entity @s hotbar.3 with splash_potion{Potion:"minecraft:healing"}
item replace entity @s hotbar.4 with splash_potion{Potion:"minecraft:healing"}
item replace entity @s hotbar.5 with splash_potion{Potion:"minecraft:healing"}
item replace entity @s hotbar.6 with splash_potion{Potion:"minecraft:healing"}
item replace entity @s hotbar.7 with splash_potion{Potion:"minecraft:healing"}
item replace entity @s hotbar.8 with splash_potion{Potion:"minecraft:healing"}
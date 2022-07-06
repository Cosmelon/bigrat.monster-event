# Description: Puts the warrior kit on players without warrior tag who contact the NPC
# Author: Cosmelon
# Type: single
# @s = @a (-NaN,1] blocks from a warrior kit NPC
# run from main:tomb/tbtick

# assign tag
tag @s add gladiatorKit
tag @s remove hunterKit
tag @s remove medicKit
tag @s remove tankKit

# get kit presence tag
#  --used to make sure that a player has **A** kit before confirmation
tag @s add hasKit

# sound
execute if score +rKActive tbCore matches 1 run playsound entity.experience_orb.pickup ambient @s ~ ~ ~ 10000

# kit info
execute if score +rKActive tbCore matches 1 run tellraw @s "Gladiator kit"
execute if score +rKActive tbCore matches 1 run tellraw @s "placeholder text"
execute if score +rKActive tbCore matches 1 run tellraw @s ""
execute if score +rKActive tbCore matches 1 run tellraw @s "kit info:"

# give items
clear @s
item replace entity @s armor.head with leather_helmet
item replace entity @s armor.chest with chainmail_chestplate
item replace entity @s armor.legs with leather_leggings
item replace entity @s armor.feet with iron_boots
item replace entity @s hotbar.0 with iron_sword
item replace entity @s hotbar.1 with cooked_beef 64
# Description: Puts the tank kit on players without tank tag who contact the NPC
# Author: Cosmelon
# Type: single
# @s = @a (-NaN,1] blocks from a tank kit NPC
# run from main:tomb/tbtick

# assign tag
tag @s add tankKit
tag @s remove gladiatorKit
tag @s remove hunterKit
tag @s remove medicKit

# get kit presence tag
#  --used to make sure that a player has **A** kit before confirmation
tag @s add hasKit

# sound
execute if score +rKActive tbCore matches 1 run playsound entity.experience_orb.pickup ambient @s ~ ~ ~ 10000

# kit info
execute if score +rKActive tbCore matches 1 run tellraw @s "tank kit"
execute if score +rKActive tbCore matches 1 run tellraw @s "placeholder text"
execute if score +rKActive tbCore matches 1 run tellraw @s ""
execute if score +rKActive tbCore matches 1 run tellraw @s "kit info:"

# give items
clear @s
item replace entity @s armor.head with leather_helmet
item replace entity @s armor.chest with netherite_chestplate
item replace entity @s armor.legs with iron_leggings
item replace entity @s armor.feet with chainmail_boots
item replace entity @s hotbar.0 with golden_axe
item replace entity @s hotbar.1 with cooked_beef 64
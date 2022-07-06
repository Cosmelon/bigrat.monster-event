# Description: Puts the hunter kit on players without hunter tag who contact the NPC
# Author: Cosmelon
# Type: single
# @s = @a (-NaN,1] blocks from a hunter kit NPC
# run from main:tomb/tbtick

# assign tag
tag @s add hunterKit
tag @s remove gladiatorKit
tag @s remove medicKit
tag @s remove tankKit

# get kit presence tag
#  --used to make sure that a player has **A** kit before confirmation
tag @s add hasKit

# sound
playsound entity.experience_orb.pickup ambient @s ~ ~ ~ 10000

# kit info
tellraw @s "hunter kit"
tellraw @s "placeholder text"
tellraw @s ""
tellraw @s "kit info:"

# give items
clear @s
item replace entity @s armor.head with leather_helmet
item replace entity @s armor.chest with chainmail_chestplate
item replace entity @s armor.legs with golden_leggings
item replace entity @s armor.feet with golden_boots
item replace entity @s hotbar.0 with wooden_sword
item replace entity @s hotbar.1 with cooked_beef 64
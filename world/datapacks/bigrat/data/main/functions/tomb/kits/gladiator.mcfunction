# Description: Puts the warrior kit on players without warrior tag who contact the NPC
# Author: Cosmelon
# Type: single
# @s = @a (-NaN,1] blocks from a warrior kit NPC
# run from main:tomb/tbtick

# tag assign
tag @s add gladiatorKit
# sound
playsound entity.experience_orb.pickup ambient @s ~ ~ ~ 10000

# kit info
tellraw @s "Gladiator kit"
tellraw @s "placeholder text"
tellraw @s ""
tellraw @s "kit info:"

# give items
clear @s
item replace entity @s armor.head with leather_helmet
item replace entity @s armor.chest with leather_chestplate
item replace entity @s armor.legs with leather_leggings
item replace entity @s armor.feet with leather_boots
item replace entity @s hotbar.0 with stone_sword
item replace entity @s hotbar.1 with cooked_beef
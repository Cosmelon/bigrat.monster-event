# Description: gives a random potion to witches whose timer has expired
# Author: Cosmelon
# Type: single, but on individual condition
# @s = @a[tag=sgWitch,scores={sgWitch=30..}]
# run from main:sg/superpowers/main

# reset timer
scoreboard players set ~sec sgWitch 0

# actual potion (piggybacking off the still running sgMath rng)
execute if score out sgMath matches 1 run item replace entity @s weapon.offhand with splash_potion{Potion:"minecraft:regeneration"}
execute if score out sgMath matches 2 run item replace entity @s weapon.offhand with splash_potion{Potion:"minecraft:harming"}
execute if score out sgMath matches 3 run item replace entity @s weapon.offhand with splash_potion{Potion:"minecraft:strength"}
execute if score out sgMath matches 4 run item replace entity @s weapon.offhand with splash_potion{Potion:"minecraft:weakness"}
execute if score out sgmath matches 5 run item replace entity @s weapon.offhand with splash_potion{Potion:"minecraft:turtle_master"}
execute if score out sgMath matches 6 run item replace entity @s weapon.offhand with splash_potion{Potion:"minecraft:swiftness"}
execute if score out sgMath matches 7 run item replace entity @s weapon.offhand with splash_potion{Potion:"minecraft:leaping"}
execute if score out sgMath matches 8 run item replace entity @s weapon.offhand with splash_potion{Potion:"minecraft:slowness"}
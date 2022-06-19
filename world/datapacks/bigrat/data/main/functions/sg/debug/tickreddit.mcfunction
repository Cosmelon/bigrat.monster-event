# Description: other reddit power abilities
# Author: Cosmelon
# Type: tick
# @s = <executor> (can be omitted when not used)
# run from 

# From what I can tell, this function is never used, and all of the code was ported to main:sg/superpowers/main
# just keeping it here for archival purposes

scoreboard players add ~tick sgRedditorGrass 1
execute if score ~tick sgRedditorGrass matches 20.. run scoreboard players add @a[tag=sgRedditor,scores={sgRedditorGrass=1..}] sgRedditorGrass 1
execute as @a[tag=sgRedditor,scores={sgRedditorGrass=45..}] run scoreboard players set @s sgRedditorGrass 0
execute as @a[tag=sgRedditor,scores={sgRedditorGrass=0}] run title @s actionbar {"text":"Press sneak to unleash the hoard! (45s cooldown)","color":"dark_red"}

execute as @a[tag=sgRedditor,scores={sgRedditorGrass=0}] if predicate main:sneak_state run function main:sg/superpowers/redditgrass

# effect
effect give @a[tag=sgRedditor] slowness 10000 2 true

# veganism nerf
execute as @a[tag=sgRedditor,nbt={Inventory:[{id:"minecraft:baked_potato"}]}] run tellraw @s {"text":"Only meat allowed!"}
execute as @a[tag=sgRedditor,nbt={Inventory:[{id:"minecraft:bread"}]}] run tellraw @s {"text":"Only meat allowed!"}
execute as @a[tag=sgRedditor,nbt={Inventory:[{id:"minecraft:carrot"}]}] run tellraw @s {"text":"Only meat allowed!"}
execute as @a[tag=sgRedditor,nbt={Inventory:[{id:"minecraft:apple"}]}] run tellraw @s {"text":"Only meat allowed!"}
execute as @a[tag=sgRedditor,nbt={Inventory:[{id:"minecraft:melon"}]}] run tellraw @s {"text":"Only meat allowed!"}
execute as @a[tag=sgRedditor,nbt={Inventory:[{id:"minecraft:potato"}]}] run tellraw @s {"text":"Only meat allowed!"}
execute as @a[tag=sgRedditor,nbt={Inventory:[{id:"minecraft:sweet_berries"}]}] run tellraw @s {"text":"Only meat allowed!"}
execute as @a[tag=sgRedditor,nbt={Inventory:[{id:"minecraft:golden_carrot"}]}] run tellraw @s {"text":"Only meat allowed!"}
execute as @a[tag=sgRedditor,nbt={Inventory:[{id:"minecraft:golden_apple"}]}] run tellraw @s {"text":"Only meat allowed!"}
execute as @a[tag=sgRedditor,nbt={Inventory:[{id:"minecraft:cookie"}]}] run tellraw @s {"text":"Only meat allowed!"}
execute as @a[tag=sgRedditor,nbt={Inventory:[{id:"minecraft:beetroot"}]}] run tellraw @s {"text":"Only meat allowed!"}
execute as @a[tag=sgRedditor,nbt={Inventory:[{id:"minecraft:beetroot_soup"}]}] run tellraw @s {"text":"Only meat allowed!"}
clear @a[tag=sgRedditor] baked_potato
clear @a[tag=sgRedditor] bread
clear @a[tag=sgRedditor] carrot
clear @a[tag=sgRedditor] melon
clear @a[tag=sgRedditor] potato
clear @a[tag=sgRedditor] sweet_berries
clear @a[tag=sgRedditor] golden_carrot
clear @a[tag=sgRedditor] golden_apple
clear @a[tag=sgRedditor] cookie
clear @a[tag=sgRedditor] beetroot
clear @a[tag=sgRedditor] beetroot_soup


execute if score ~tick sgRedditorGrass matches 20.. run scoreboard players set ~tick sgRedditorGrass 0
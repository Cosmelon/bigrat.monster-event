# superpowers mode
#  This function is run eight times at the start of sg

# init
scoreboard players set ~countDown sg 600 
scoreboard players add ~powerRun sg 1

# giving superpowers
execute if score out sgMath matches 1 run tag @a[tag=player,tag=noPowers,sort=random,limit=1] add sgVampire
execute if score out sgMath matches 2 run tag @a[tag=player,tag=noPowers,sort=random,limit=1] add sgTrainer
execute if score out sgMath matches 3 run tag @a[tag=player,tag=noPowers,sort=random,limit=1] add sgRedditor
execute if score out sgMath matches 4 run tag @a[tag=player,tag=noPowers,sort=random,limit=1] add sgCreeper
execute if score out sgMath matches 5 run tag @a[tag=player,tag=noPowers,sort=random,limit=1] add sgWitch
execute if score out sgMath matches 6 run tag @a[tag=player,tag=noPowers,sort=random,limit=1] add sgLeprechaun
execute if score out sgMath matches 7 run tag @a[tag=player,tag=noPowers,sort=random,limit=1] add sgMedic
execute if score out sgMath matches 8 run tag @a[tag=player,tag=noPowers,sort=random,limit=1] add sgPyro
tag @a[tag=sgVampire] remove noPowers
tag @a[tag=sgTrainer] remove noPowers
tag @a[tag=sgRedditor] remove noPowers
tag @a[tag=sgCreeper] remove noPowers
tag @a[tag=sgWitch] remove noPowers
tag @a[tag=sgLeprechaun] remove noPowers
tag @a[tag=sgMedic] remove noPowers
tag @a[tag=sgPyro] remove noPowers

# explaining powers in chat
execute if score ~powerRun sg matches 7 run function main:sg/superpowers/infochat

# sgVampire


# sgTrainer
effect give @a[tag=sgTrainer] resistance 10000 2 true
effect give @a[tag=sgTrainer] strength 10000 0 true
execute as @a[tag=sgTrainer,nbt={Inventory:[{id:"minecraft:cooked_beef"}]}] run tellraw @s {"text":"Animals are sentient you fucker!"}
execute as @a[tag=sgTrainer,nbt={Inventory:[{id:"minecraft:cooked_mutton"}]}] run tellraw @s {"text":"Animals are sentient you fucker!"}
execute as @a[tag=sgTrainer,nbt={Inventory:[{id:"minecraft:cooked_porkchop"}]}] run tellraw @s {"text":"Animals are sentient you fucker!"}
execute as @a[tag=sgTrainer,nbt={Inventory:[{id:"minecraft:cooked_rabbit"}]}] run tellraw @s {"text":"Animals are sentient you fucker!"}
execute as @a[tag=sgTrainer,nbt={Inventory:[{id:"minecraft:cooked_salmon"}]}] run tellraw @s {"text":"Animals are sentient you fucker!"}
execute as @a[tag=sgTrainer,nbt={Inventory:[{id:"minecraft:cooked_cod"}]}] run tellraw @s {"text":"Animals are sentient you fucker!"}
clear @a[tag=sgTrainer] cooked_beef
clear @a[tag=sgTrainer] cooked_mutton
clear @a[tag=sgTrainer] cooked_porkchop
clear @a[tag=sgTrainer] cooked_rabbit
clear @a[tag=sgTrainer] cooked_salmon
clear @a[tag=sgTrainer] cooked_cod

# sgRedditor
execute as @a[tag=sgRedditor,predicate=main:sneak_state,scores={sgRedditorGrass=0}] run function main:sg/superpowers/redditgrass
effect give @a[tag=sgRedditor] slowness 10000 2 true
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

# sgCreeper
execute as @a[tag=sgCreeper,predicate=main:sneak_state,scores={sgCreeperTNT=0}] run function main:sg/superpowers/creeper

# sgWitch
scoreboard players add ~tick sgWitch 1
execute if score ~tick sgWitch matches 20.. run scoreboard players add ~sec sgWitch 1
execute if score ~tick sgWitch matches 20.. run scoreboard players set ~tick sgWitch 0
execute if score ~sec sgWitch matches 20.. run execute as @a[tag=sgWitch] run function main:sg/superpowers/witchpot

# sgLeprechaun


# sgMedic


# sgPyro